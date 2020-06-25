import subprocess
import sys
import shutil
import os


def main():
    raw_event = sys.argv[1]
    event_args = raw_event.split(" ")
    event = {
        "path": event_args[0],
        "type": event_args[2]
    }

    if event["type"] in ["Updated", "Created"]:
        print(event)
        if event["path"].endswith("_index.md"):
            print("_index.md file")
            
            try:
                shutil.rmtree('public')
            except OSError:
                pass
            subprocess.call(['hugo', '--gc', '--minify', '--config=config-dev.toml'])
        elif event["path"].endswith(".md"):
            print("Need to build new slides, PDF and run Hugo")
            pathArray = event["path"].split("/")
            unit = "/".join(pathArray[:8])
            file = pathArray[-1]
            name = file.split(".md")[0]
            slidePath = f"{unit}/slides/{name}.html"
            pdfPath = f"{unit}/pdfs/{name}.pdf"
            

            try:
                os.remove(slidePath)
            except OSError:
                pass
            try:
                os.remove(pdfPath)
            except OSError:
                pass

            slideCommand = f"pandoc -s --mathjax=https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js -i -t revealjs {event['path']} -o {slidePath} -V revealjs-url=/reveal.js"
            pdfCommand = f"pandoc {event['path']} -o {pdfPath} --pdf-engine=pdflatex"
            subprocess.call([slideCommand], shell=True)
            subprocess.call([pdfCommand], shell=True)

            subprocess.call([f"mv {unit}/markdown/*.md {unit}"], shell=True)
            shutil.rmtree('public')
            subprocess.call(['hugo', '--gc', '--minify', '--config=config-dev.toml'])
            subprocess.call([f"mv {unit}/*.md {unit}/markdown/"], shell=True)
            subprocess.call([f"mv {unit}/markdown/_index.md {unit}"], shell=True)
        else:
            print("Not defined")

if __name__ == "__main__":
    main()