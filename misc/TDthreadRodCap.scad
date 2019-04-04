difference() { 
    union() {
        cylinder(r1=1.5, r2=1.5,h=6, $fn=100);           
            
        translate([-1.5, -1.5, 5]) {
        cube([3,3,2]);};
    }
        
    translate([0, 0, -0.5]) {
        cylinder(r1=0.7, r2=0.7, h=5, $fn=100);};
        
    translate([-2, -0.5, 6]) {
        cube([4,1,1.5]);};
    }