#! /bin/bash

rings=( 14 16 18 20 22 24 26 28 30 32 )

for i in "${rings[@]}"; do
	echo generating ring diameter ${i}
   	openscad copying_ring.scad -o "./dist/b${i}.stl" -D "diameter=${i}"
done
