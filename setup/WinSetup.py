# This script is used to run the main program on windows.
# The scope of the program is to be able to generate every gitignore troughout a terminal command.

# made by Valerio C.(Thebigbot#2222) and Matteo K.(Matteo Krstic#8397)
# version 1.0

import os
import time

print("Starting the gsh windows installer...")
time.sleep(0.7)
print("This script will install all the required modules for gsh to work on windows.")

pip_type = "pip"
if os.name == "posix":
    pip_type = "pip3"

os.system(pip_type + " install colorama")

print("Install completed")
print("Press enter to exit")

os.system('doskey gsh = C:\devStuff\progetti che vanno su gitHUB')

def findfile(name, path):
    for dirpath, dirname, filename in os.walk(path):
        if name in filename:
            return os.path.join(dirpath, name)
filepath = findfile("mainsh.py", "/")
print(filepath)
findfile("mainsh.py", "/")

os.system("DOSKEY gsh=python3 " + filepath)


a = input()
