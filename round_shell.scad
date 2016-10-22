module round_shell(diameter, height, thickness, half) {
    module circle_shell(height, diameter) {
        difference() {
            cylinder(h = height, d = diameter);
            cylinder(h = height, d = (diameter - (thickness * 2)));
        }
    }
    
    if(half) {
        difference() {
            circle_shell(height, diameter);
            translate([diameter/4, 0, height/2]) {
                cube([diameter/2, diameter, height], true);
            }
        }
    } else {
        circle_shell(height, diameter);
    }
}