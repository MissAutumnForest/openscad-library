include <round_shell.scad>;

module ice_rink(length, width, height, thickness) {
    translate([-((length-width)/2), 0, -(height/2)]) {
        round_shell(width, height, thickness, true);
        
        translate([0, width/2-thickness, 0]) {
            cube([length - width, thickness, height]);
        }
        
        translate([0, -(width/2), 0]) {
            cube([length - width, thickness, height]);
        }
        
        translate([length-(width), 0, 0]) {
            rotate([0, 0, 180]) {
                round_shell(width, height, thickness, true);
            }
        }
    }
}