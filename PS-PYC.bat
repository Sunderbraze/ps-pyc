@echo off > NUL
powershell -windowstyle hidden -executionpolicy remotesigned -Command "& { param($path);$dir = split-path $path;$name = [string](gi $path).BaseName;$pycacheDir = ($dir+'\__pycache__');$pycacheWrite = New-Item -ItemType File -Path ($pycacheDir+'\'+$name+'.cpython-37.pyc') -Force -ErrorAction Stop;python -m py_compile $path;rni $pycacheWrite ($name+'.pyc');mv ($pycacheDir+'\'+$name+'.pyc') $dir;rm $pycacheDir -Recurse -Force }" %*
exit
