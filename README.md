# router-copying-ring

Generate STL files for router copying rings of any size for 3D printing
* Form factor supported by most routers
* Uses two M5 connical head bolts for fixation

<img width="500" alt="Screenshot 2021-11-03 at 23 11 32" src="https://user-images.githubusercontent.com/3630020/140200484-fc48f48b-7dc4-4540-a7ba-4fac9a6408df.png">

<img width="500" alt="Screenshot 2021-11-03 at 23 11 32" src="https://user-images.githubusercontent.com/3630020/140200584-300cf439-63cf-419d-97bd-301b74824649.png">


# Usage

from OpenSCAD GUI open `main.scad` or `copying_ring.scad`

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
