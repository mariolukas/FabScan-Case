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

}
