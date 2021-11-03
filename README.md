# router-copying-ring
 Generate router copying ring STL for printing

# Usage

from OpenSCAD GUI open main.scad or copying_ring.scad

from the command line, create one STL file with:

```
openscad copying_ring.scad -o "./dist/b23.stl" -D "diameter=23"
```

from the command line, to build the whole ringset:

```
 ./build_ringset.sh  
```


# Installation

On Mac, for quicker access to command line:

```
ln -s /Users/__username__/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD /usr/local/bin/openscad
```