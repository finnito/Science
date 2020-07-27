"""Author: Finn LeSueur

This script parses the output from fswatch
and uses it to rebuild small parts of my
teaching notes.
The idea behind this is to not rebuild
all the slides and PDFs every time I need
update something when debugging, because
that is very slow.
Instead, only rebuild what changed and save
the full rebuild for when it is deployed
using Gitlab's CI.

Watch for input like this:

fswatch -x0re ".*" -i "\\.md$" ./ | xargs -0 -n 1 python3 sparse-build.py

"""
import subprocess
import sys
import shutil
import os


def main():
    """ Currently does all the things!
    """
    raw_event = sys.argv[1]
    event_args = raw_event.split(" ")
    event = {
        "path": event_args[0],
        "type": event_args[2]
    }

    if event["type"] in ["Updated", "Created"]:
        print(f"{event['type']}    {event['path']}")
        if event["path"].endswith("_index.md"):
            print(" - Building: Hugo")
            try:
                shutil.rmtree('public')
            except OSError:
                pass
            subprocess.call(['hugo', '--gc', '--minify', '--config=config-dev.toml', '--quiet'])
            proc = subprocess.Popen(
                [
                    "osascript",
                    "-e",
                    'display notification "Built Hugo" with title "Science" sound name "Morse"'
                ],
                stdout=subprocess.PIPE, stderr=subprocess.PIPE
            )
            source, err = proc.communicate()
            if err:
                print(err.decode("utf-8"))
        elif event["path"].endswith(".md"):
            print(" - Building: Slides, PDF and Hugo")
            path_array = event["path"].split("/")
            unit = "/".join(path_array[:8])
            file = path_array[-1]
            name = file.split(".md")[0]
            slide_path = f"{unit}/slides/{name}.html"
            pdf_path = f"{unit}/pdfs/{name}.pdf"

            try:
                os.remove(slide_path)
            except OSError:
                pass
            try:
                os.remove(pdf_path)
            except OSError:
                pass

            slide_command = f"pandoc -s \
            --mathjax=https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js \
            -i \
            -t revealjs {event['path']} \
            -o {slide_path} \
            -V \
            revealjs-url=/reveal.js"

            pdf_command = f"pandoc {event['path']} \
            -o {pdf_path} \
            --pdf-engine=pdflatex \
            --resource-path=.:{unit}/markdown/"

            subprocess.call([slide_command], shell=True)
            subprocess.call([pdf_command], shell=True)
            subprocess.call([f"mv {unit}/markdown/*.md {unit}"], shell=True)
            shutil.rmtree('public')
            subprocess.call(['hugo', '--gc', '--minify', '--config=config-dev.toml', '--quiet'])
            subprocess.call([f"mv {unit}/*.md {unit}/markdown/"], shell=True)
            subprocess.call([f"mv {unit}/markdown/_index.md {unit}"], shell=True)
            proc = subprocess.Popen(
                [
                    "osascript",
                    "-e",
                    'display notification "Built slides, PDF & Hugo" with title "Science" sound name "Morse"'
                ],
                stdout=subprocess.PIPE, stderr=subprocess.PIPE
            )
            source, err = proc.communicate()
            if err:
                print(err.decode("utf-8"))
        else:
            pass
        print("-"*15)

if __name__ == "__main__":
    main()
