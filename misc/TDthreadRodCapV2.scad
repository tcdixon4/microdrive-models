difference() { 
    //Cap
    union() {
        cylinder(r1=1.1, r2=1.1,h=4.5, $fn=100);           
            
    }
        
    //Threaded rod hole
    translate([0, 0, -0.5]) {
        cylinder(r1=0.7, r2=0.7, h=3, $fn=100);};
     
    //Screwdriver notch   
    translate([-2, -0.3, 4]) {
        cube([4,0.6,1]);};
    }