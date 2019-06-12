//complete_3d();

difference(){
    base_plate();
    translate([0,-5,125/2-2]) rotate([-90,0,0]) connector();
    //%translate([0,-5,125/2]) rotate([-90,0,0]) stand();
}

module complete_3d(){
    difference(){
        translate([0,17,0]) union(){
            cylinder(10,140/2,140/2,true, $fn=150); 
            
            translate([0,6,2]) cylinder(5,5/2,5/2, $fn=100);
            translate([6,0,2]) cylinder(5,5/2,5/2, $fn=100);
            translate([0,-6,2]) cylinder(5,5/2,5/2, $fn=100);
            translate([-6,0,2]) cylinder(5,5/2,5/2, $fn=100);
        }

        translate([0,55,0]) cube([145,70,20],true);
        translate([0,-55,0]) cube([145,70,20],true);
        translate([0,-5,-7]) cube([134,3.2,20],true);

         // V2
        translate([38,12,0]) cylinder(10,22,22, $fn=100, true);
        translate([-38,12,0]) cylinder(10,22,22, $fn=100, true);
    }
}

module stand(){
    cube([132,115,3.1],true); 
    connector();
}

module connector(){
    translate([0,123/2-1,0]) cube([25,6,3.1],true);  
    translate([123/2-30/2,123/2-1,0]) cube([25,6,3.1],true);  
    translate([-123/2+30/2,123/2-1,0]) cube([25,6,3.1],true);  
}

module base_plate(){
    difference(){
        translate([0,17,0]) union(){
            cylinder(5,140/2,140/2,true, $fn=150); 
        }
        
        translate([0,55,0]) cube([145,70,5],true);
        translate([0,-55,0]) cube([145,70,5],true);
        
        translate([0,15,0]){    
            translate([0,-6,-8]) cylinder(15,3.1/2,3.1/2, $fn=100);
            translate([6,0,-8]) cylinder(15,3.1/2,3.1/2, $fn=100);
            translate([-6,0,-8]) cylinder(15,3.1/2,3.1/2, $fn=100);
        }
    }
}