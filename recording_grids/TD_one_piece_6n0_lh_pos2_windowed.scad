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
    translate([-1, 1, -5]) {cylinder(h=10, r1=0.5, r2=0.5, $fn=100);};    
    translate([5, 1, -5]) {cylinder(h=10, r1=0.5, r2=0.5, $fn=100);};
    
    //Hemisphere label
    translate([-12, -7, 4]) {cube([1, 4, 33]);};
    translate([-12, -7, 4]) {cube([3, 1, 33]);};
    
    //Position label
    translate([-12, 3, 4]) {cube([1, 4, 33]);};    
    translate([-11, 6, 4]) {cylinder(h=3, r1=1, r2=1, $fn=100);};
    translate([-9, 3, 4]) {cube([2, 1, 33]);};
    translate([-9, 3, 4]) {cube([1, 2, 33]);};
    translate([-9, 4.5, 4]) {cube([2, 1, 33]);};
    translate([-8, 5, 4]) {cube([1, 1.5, 33]);};
    translate([-9, 6, 4]) {cube([2, 1, 33]);};
    
    //Window for visualization and pressure relief
    translate([-2.5, -10.5, -10]) {cube([9, 9, 20]);};
    translate([-1, -10.5, -10]) {cube([9, 9, 10]);};
    

}


//Tower - for position 1 (most posterior), translate [-3.5, 1, 4.5]
translate([-4.5, 1, 4.5]) {
    difference() { 
        union() {
            //Main base
            translate([-2, 0, 0]) {
                cube([5,6.5,2]);}    
            cube([12,4,2]);
            translate([10, -1, 0]) {
                cube([4,6.5,2]);}
                
            //Tower frame   
            translate([1, 0.5, 0]) {
                cube([11, 7.5, 53]);}          
            };  
        
        //Holes for the electrode to pass through into the grid
        translate([3.5, 0, -0.5]) {cylinder(h=6, r1=0.45, r2=0.45, $fn=100);};
        translate([9.5, 0, -0.5]) {cylinder(h=6, r1=0.45, r2=0.45, $fn=100);};       
        
        //Holes for the threaded rod to sit in
        translate([3.5, 2, 8]) {cylinder(h=11, r1=0.85, r2=0.85, $fn=100);};   
        translate([9.5, 2, 8]) {cylinder(h=11, r1=0.85, r2=0.85, $fn=100);};
        
        //Holes for the threaded portion of the shuttle to pass through
        translate([3.5, 2, 18]) {cylinder(h=53, r1=1.7, r2=1.7, $fn=100);};  
        translate([9.5, 2, 18]) {cylinder(h=53, r1=1.7, r2=1.7, $fn=100);};
        
        //Holes where the shuttle sticks out of the tower
        translate([3.5, 0, 18]) {cylinder(h=53, r1=1.3, r2=1.3, $fn=100);};    
        translate([9.5, 0, 18]) {cylinder(h=53, r1=1.3, r2=1.3, $fn=100);};
           
        //Holes for the shuttle fin
        translate([2.8, 3, 18]) {cube([1.4, 4, 33]);};    
        translate([8.8, 3, 18]) {cube([1.4, 4, 33]);};
        
        //Notch at the top to allow shuttle insertion
        translate([0.5, 0, 44]) {cube([12, 2, 10]);}}
    }

