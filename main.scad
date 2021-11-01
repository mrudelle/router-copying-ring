use<screw.scad>;

$fa = 1;
$fs = 0.4;

module copying_ring(diameter = 26, ledge_thickness = 3) {
    

    base_diameter = 59;
    base_thickness = 3;
    
    ledge_height = 6;

    screw_offset = 25;
    screw_diameter = 5;
    screw_head = (12-5)/2;
    
    text_depth = 1.2;
    
    difference() {
            
        // base
        union() {
            cylinder(h=base_thickness, r=base_diameter/2);

            // ledge
            translate([0, 0, +0.001]) cylinder(h=base_thickness + ledge_height - 0.001, r=diameter/2);
        }
                
        // screw holes
        translate([screw_offset, 0, base_thickness+0.001]) 
            screw(diameter = screw_diameter, head_height = screw_head, h = base_thickness + 0.002);
        translate([-screw_offset, 0, base_thickness+0.001]) 
            screw(diameter = screw_diameter, head_height = screw_head, h = base_thickness + 0.002);
        
        // ledge hole
        translate([0, 0, -0.001]) cylinder(h=base_thickness + ledge_height + 0.002, r=diameter/2 - ledge_thickness);
    
        // dimension
        translate([0, -(diameter + (base_diameter - diameter)/2)/2, base_thickness - text_depth + 0.001])
            linear_extrude(height = text_depth) {
                text(str(diameter), size=10, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");
            };

    }
}

copying_ring(26);