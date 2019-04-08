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
    translate([3, 0, -5]) {cylinder(h=10, r1=0.4, r2=0.4, $fn=100);};    
    translate([-3, 2, -5]) {cylinder(h=10, r1=0.4, r2=0.4, $fn=100);};
    
    //Hemisphere label
    translate([9, 3, 4]) {cube([1, 4, 33]);};    
    translate([10, 6, 4]) {cylinder(h=3, r1=1, r2=1, $fn=100);};
    translate([11, 3, 4]) {rotate([0,0,40]) {cube([1, 3, 33]);};};
    
    //Position label
    translate([5, -6, 4]) {cube([1, 4, 33]);};    
    translate([6, -3, 4]) {cylinder(h=3, r1=1, r2=1, $fn=100);};
    translate([9, -6, 4]) {cube([1, 4, 33]);};
    translate([7.5, -3, 4]) {cube([2, 1, 33]);};
    translate([7.5, -4.5, 4]) {cube([2, 1, 33]);};
    translate([7.5, -6, 4]) {cube([2, 1, 33]);};
    
    //Window for visualization and pressure relief
    translate([-4.5, -10.5, -10]) {cube([9, 8.5, 20]);};
    translate([-4.5, -10.5, -10]) {cube([3, 10.5, 20]);};
    translate([-8, -10.5, -10]) {cube([5, 10.5, 10]);};
    

}


//Tower - for position 1 (most posterior), translate [-8.5, 2, 4.5]
translate([-6.5, 2, 4.5]) {
    difference() { 
        union() {
            //Main base
            translate([-2, 0, 0]) {
                cube([5,5.5,2]);}    
            cube([14,4,2]);
            translate([6, -2, 0]) {
                cube([8,2,2]);}
                
            //Tower frame   
            translate([1, 0.4, 0]) {
                cube([5.5, 7.5, 53]);}  
            translate([6.5, -1.6, 0]) {
                cube([5.5, 7.5, 53]);}        
            };  
        
        //Holes for the electrode to pass through into the grid
        translate([3.5, 0, -0.5]) {cylinder(h=6, r1=0.4, r2=0.4, $fn=100);};
        translate([9.5, -2, -0.5]) {cylinder(h=6, r1=0.4, r2=0.4, $fn=100);};       
        
        //Holes for the threaded rod to sit in
        translate([3.5, 2, 8]) {cylinder(h=11, r1=0.85, r2=0.85, $fn=100);};   
        translate([9.5, 0, 8]) {cylinder(h=11, r1=0.85, r2=0.85, $fn=100);};
        
        //Holes for the threaded portion of the shuttle to pass through
        translate([3.5, 2, 18]) {cylinder(h=53, r1=1.65, r2=1.65, $fn=100);};  
        translate([9.5, 0, 18]) {cylinder(h=53, r1=1.65, r2=1.65, $fn=100);};
        
        //Holes where the shuttle sticks out of the tower
        translate([3.5, 0, 18]) {cylinder(h=53, r1=1.3, r2=1.3, $fn=100);};    
        translate([9.5, -2, 18]) {cylinder(h=53, r1=1.3, r2=1.3, $fn=100);};
           
        //Holes for the shuttle fin
        translate([2.85, 3, 18]) {cube([1.3, 4, 33]);};    
        translate([8.85, 1, 18]) {cube([1.3, 4, 33]);};
        
        //Notch at the top to allow shuttle insertion
        translate([0.5, 0, 44]) {cube([6, 2, 10]);}
        translate([6, -2, 44]) {cube([7, 2, 10]);}}
    }
