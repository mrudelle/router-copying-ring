use<copying_ring.scad>;

$fa = 2;
$fs = 0.8;

rings = [
    [16, 18, 20],
    [22, 24, 14],
    [28, 30, 32],
];

spacing = 62;

for (row = [0:len(rings)-1]) {
    for (col = [0:len(rings[row])-1]) {
        echo(row, col, rings[row][col]);
        
        l_t = (rings[row][col] <= 20) ? 2 : 
            (rings[row][col] <= 24) ? 2.5 : 3;
        translate([row*spacing, col*spacing, 0]) 
            copying_ring(rings[row][col], ledge_thickness=l_t);
    }
}