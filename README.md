# PS-PYC
Batch-executed powershell script block that compiles a given .py file into a .pyc file with the same filename in the same directory

# Usage
Python 3.7 compiles .py files to a subdirectory with version info added to the name; my workflow makes it necessary to remove the version info from the compiled filename and move it back into the same directory as the source, so I wrote a batch file called PS-PYC to accomplish that in a single click.

PS-PYC.bat does the following:
1) Calls python to compile a .py file
2) Removes .cpython-37 garbage from the compiled filename
3) Moves renamed file out of useless __pycache__ subfolder
4) Deletes aforementioned waste of directory with extreme prejudice

# Setup
PS-PYC.bat is meant to be executed from the shell menu of a .py file with the .py file being piped to it as a launch argument. In more simple terms: I want to be able to right-click on a .py file, select Compile Here, and see a .pyc file appear next to it. I've included a .reg file to add the HKCR keys for PS-PYC.bat (executed from path) to the shell menu of .py files. Also included is PS-PYC.ps1 which is the same script block from PS-PYC.bat, but in a more readable format with comments.

If you want to copy my ez-mode:
1) Download/unzip anywhere
2) Run PS-PYC.reg
3) Move PS-PYC.bat into C:\Windows
4) Right-click on .py files
5) Select "Compile Here"
6) ???
7) Profit

# But why?
Well, I'm not a fan of Python at all, but I'm especially not a fan of the way Python 3.7 moves/renames compiled files. I'm not a full stack dev, I'm just a humble video game modder and mod modder, so I don't care about carefully-organized project directories and version-controlled filenames, I just want to compile a damn .py file into a .pyc file, with the same name, in the same place, with a single click. That way I can pack it into a testing build without extra steps, and fast forward to the part where the error messages start to flood in. 

Based on what I've read around the StackExchanges of the world, Python versions before 3 used to do exactly what I need. Unfortunately for me, I most often us Python 3.7, which doesn't seem to have a lot of options for overriding this time-wasting behavior, unless you want to use MORE Python in the compiling process. So I made this script in an objectively superior programming language that doesn't cry about indentation. 

There is probably a less lazy and more secure place for PS-PYC.bat aside from %WINDIR% aka C:\Windows but it ultimately doesn't matter where you put PS-PYC.bat as long as it can be executed with a .py file as a launch argument. If you'd rather not put it on your system path, or if you're even lazier than me, you can skip everything else, put PS-PYC.bat on your desktop, then drag .py files onto it. It'll function as intended. Probably.

No licenses or anything, this is all public domain. I believe the cool kids around here refer to it as The Unlicense.
