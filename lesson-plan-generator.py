#!/usr/bin/env python3

lessons = int(input("Number of lessons: "))

output = "### Ngā Mahere Akoranga: _Lesson Plans_\n\n"

for i in range(0, lessons):
    output += f"""{i+1}. #### 
    - __Whakaritenga__
        + 
    - __Te Whāinga Ako__
        1. 
    - __Notes__
        + Slides: 
    - __Task/Ngohe__
        + \n\n"""

print(output)
