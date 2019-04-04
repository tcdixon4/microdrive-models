difference() { 
    union() {
        //Threaded portion
        cylinder(r1=1.5, r2=1.5,h=9, $fn=100);           
            
        //Electrode holder
        translate([0, 2.2, 0]) {
            cylinder(r1=1.15, r2=1.15, h=28, $fn=100);}; 
        translate([-1.15, 2.2, 0]) {
            cube([2.3,2,28]);};
            
        //Shuttle fin
        translate([-0.5, -4.5, 0]) {
            cube([1,3.5,5]);};
    }
    
    //Threaded rod hole
    translate([0, 0, -0.5]) {
        cylinder(r1=0.6, r2=0.6, h=10, $fn=100);};
      
    //Electrode hole
    translate([0, 2, -0.5]) {
        cylinder(r1=0.45, r2=0.45, h=29, $fn=100);};
       
    //Set screw hole
    translate([0, 4.5, 26]) {
        rotate([90, 0, 0]) {
            cylinder(r1=0.6, r2=0.6, h=5, $fn=100);}}
    }