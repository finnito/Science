"""Author: Finn LeSueur

The purpose of this script is to parse events
from fswatch (provided by the watch.sh script)
and where appropriate, build new slides using
Pandoc.

Script argv look like this:
[
    'sparse-build.py',
    '-d',
    '/Users/finnlesueur/Git/science.lesueur.nz/content/12phy/as91523/3-beats.md AttributeModified IsFile Updated'
]
"""

import subprocess
import sys

def main():

    # Start by parsing the fswatch
    # output into a hash containing
    # useful information.
    raw_event = sys.argv[2]
    event_args = raw_event.split(" ")
    file = event_args[0].split("/")[-1]
    event = {
        "path": event_args[0],
        "type": event_args[3],
        "file": file,
        "folder": "/".join(event_args[0].split("/")[:-1])
    }

    if "public" in event["path"]:
        return

    # Only watch for specific event types.
    if event["type"] in ["Updated", "Created", "Renamed", "Deleted"]:
        # print(event["file"])
        if not event["file"][0].isdigit():
        # if event["path"].endswith(("_index.md", ".css", ".html", ".toml", ".txt")):
            # No need to do anything. Hugo serve is running
            # in the background, so it will catch these changes
            # and rebuild.
            pass

        if "lessons" in event["path"]:
            return

        elif event["path"].endswith(".md"):
            # Here a slide file has been altered, so we need
            # to build that specific slide and run Hugo.
            # We need to pass the -f and -p flags.
            subprocess.run(
                [
                    f"bash build.sh \
                     -d \
                     -f {event['file']} \
                     -p {event['folder']}"
                ],
                shell=True,
                check=False
            )

        # Something else unforeseen could have been
        # changed. Ignore it. The rest will be caught by Hugo.
        else:
            pass

if __name__ == "__main__":
    main()
