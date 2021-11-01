module screw(diameter = 10, head_height = 5, h = 30) {
    translate([0, 0, -h]) cylinder(h=h, r = diameter/2);
    translate([0, 0, -head_height]) cylinder(h=head_height, r1 = diameter/2, r2 = diameter/2 + head_height);
}

screw(5, 2);