difference() { 
    union() {
        //Main plug structure
        cylinder(h=4.508, r1=16.206, r2=16.206, $fn=100);
        translate([0, 0, -4.382]) {
            cylinder(h=8.89, r1=8, r2=8, $fn=100);}     
        }; 
       
    //Holes for the screws that fix the grid to the chamber   
    translate([-13.962, 0, -0.5]) {cylinder(h=6, r1=1.2, r2=1.2, $fn=100);};  
    translate([13.962, 0, -0.5]) {cylinder(h=6, r1=1.2, r2=1.2, $fn=100);}; 
    translate([0, -13.962, -0.5]) {cylinder(h=6, r1=1.2, r2=1.2, $fn=100);};
    translate([0, 13.962, -0.5]) {cylinder(h=6, r1=1.2, r2=1.2, $fn=100);};
    translate([-9.873, -9.873, -0.5]) {cylinder(h=6, r1=1.2, r2=1.2, $fn=100);};
    translate([-9.873, 9.873, -0.5]) {cylinder(h=6, r1=1.2, r2=1.2, $fn=100);};
    translate([9.873, 9.873, -0.5]) {cylinder(h=6, r1=1.2, r2=1.2, $fn=100);};
    
    //Inset holes for half the screws
    translate([-13.962, 0, 2.07]) {cylinder(h=3, r1=2.4, r2=2.4, $fn=100);};  
    translate([13.962, 0, 2.07]) {cylinder(h=3, r1=2.4, r2=2.4, $fn=100);}; 
    translate([0, -13.962, 2.07]) {cylinder(h=3, r1=2.4, r2=2.4, $fn=100);};
    translate([0, 13.962, 2.07]) {cylinder(h=3, r1=2.4, r2=2.4, $fn=100);};
    translate([-18.762, -2.4, 2.07]) {cube([4.8, 4.8, 3]);};  
    translate([13.962, -2.4, 2.07]) {cube([4.8, 4.8, 3]);}; 
    translate([-2.4, -18.762, 2.07]) {cube([4.8, 4.8, 3]);};
    translate([-2.4, 13.962, 2.07]) {cube([4.8, 4.8, 3]);};
    
    //Holes for electrodes
    translate([1, 0, -5]) {cylinder(h=10, r1=0.5, r2=0.5, $fn=100);};    
    translate([5, 2, -5]) {cylinder(h=10, r1=0.5, r2=0.5, $fn=100);};
    translate([5, -2, -5]) {cylinder(h=10, r1=0.5, r2=0.5, $fn=100);};
    translate([-4, -1, -5]) {cylinder(h=10, r1=0.5, r2=0.5, $fn=100);};
    translate([-4, 3, -5]) {cylinder(h=10, r1=0.5, r2=0.5, $fn=100);};
    
    //Hemisphere label
    translate([-12, -7, 4]) {cube([1, 4, 33]);};
    translate([-12, -7, 4]) {cube([3, 1, 33]);};
    
    //Window for visualization and pressure relief
    translate([5.5, -11, -20]) {rotate([0,0,84]) {cube([7.5, 12, 33]);};};
        
    
     
}

    
    //Fake GT for testing visualization of GT tip
    //translate([0, 1, -22]) {cylinder(h=37, r1=0.3, r2=0.3, $fn=100);}
    //translate([6, 1, -22]) {cylinder(h=37, r1=0.3, r2=0.3, $fn=100);}