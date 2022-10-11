#Get batch script arg as parameter $path
param($path)

#Create necessary variables from $path
$dir = split-path $path
$name = [string](gi $path).BaseName
$pycacheDir = ($dir+'\__pycache__')

#Pre-write compiled file as a variable
$pycacheWrite = New-Item -ItemType File -Path ($pycacheDir+'\'+$name+'.cpython-37.pyc') -Force -ErrorAction Stop

#Call Python to compile
python -m py_compile $path

#Rename compiled file, move it back to where it belongs, trash the subdirectory
rni $pycacheWrite ($name+'.pyc')
mv ($pycacheDir+'\'+$name+'.pyc') $dir
rm $pycacheDir -Recurse -Force