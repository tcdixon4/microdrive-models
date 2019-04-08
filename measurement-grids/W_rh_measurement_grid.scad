difference() { 
    union() {
        //Main plug structure
        cylinder(h=4.508, r1=16.206, r2=16.206, $fn=100);
        translate([0, 0, -3.382]) {
            cylinder(h=7.89, r1=8, r2=8, $fn=100);}     
        }; 
       
    //Holes for the screws that fix the grid to the chamber   
    translate([-13.962, 0, -0.5]) {cylinder(h=6, r1=1.2, r2=1.2, $fn=100);};  
    translate([13.962, 0, -0.5]) {cylinder(h=6, r1=1.2, r2=1.2, $fn=100);}; 
    translate([0, -13.962, -0.5]) {cylinder(h=6, r1=1.2, r2=1.2, $fn=100);};
    translate([0, 13.962, -0.5]) {cylinder(h=6, r1=1.2, r2=1.2, $fn=100);};
    translate([-9.873, -9.873, -0.5]) {cylinder(h=6, r1=1.2, r2=1.2, $fn=100);};
    translate([-9.873, 9.873, -0.5]) {cylinder(h=6, r1=1.2, r2=1.2, $fn=100);};
    translate([9.873, -9.873, -0.5]) {cylinder(h=6, r1=1.2, r2=1.2, $fn=100);};
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
    translate([-1, 0, -5]) {cylinder(h=10, r1=0.5, r2=0.5, $fn=100);};    
    translate([-5, 3, -5]) {cylinder(h=10, r1=0.5, r2=0.5, $fn=100);};
    translate([-5, -1, -5]) {cylinder(h=10, r1=0.5, r2=0.5, $fn=100);};
    translate([4, 1, -5]) {cylinder(h=10, r1=0.5, r2=0.5, $fn=100);};
    translate([4, -3, -5]) {cylinder(h=10, r1=0.5, r2=0.5, $fn=100);};
    
    //Hemisphere label
    translate([9, 3, 4]) {cube([1, 4, 33]);};    
    translate([10, 6, 4]) {cylinder(h=3, r1=1, r2=1, $fn=100);};
    translate([11, 3, 4]) {rotate([0,0,40]) {cube([1, 3, 33]);};};
    
    //Window for visualization and pressure relief
    translate([4, -11, -20]) {rotate([0,0,78]) {cube([6.5, 12, 33]);};};
    
}

    //Fake GT for testing visualization of GT tip
    //translate([-1, 0, -22]) {cylinder(h=37, r1=0.3, r2=0.3, $fn=100);}
    //translate([4, 1, -22]) {cylinder(h=37, r1=0.3, r2=0.3, $fn=100);}
    //translate([4, -3, -22]) {cylinder(h=37, r1=0.3, r2=0.3, $fn=100);}
    //translate([-5, -1, -22]) {cylinder(h=37, r1=0.3, r2=0.3, $fn=100);}
    //translate([-5, 3, -22]) {cylinder(h=37, r1=0.3, r2=0.3, $fn=100);}
