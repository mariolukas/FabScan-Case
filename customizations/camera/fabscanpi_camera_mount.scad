//#translate([0,-38,0]) import("pi_camera_mount_v4.stl", convexity=3);
$fn=50;
//DJL projection() fabscan_cam_mount();
translate([0,0,2]) fabscan_cam_mount();

module plate(){
/*   hull(){	
	translate([-25.2,0,0]) cylinder(4,4,4,true);
	translate([-2.2,0,0]) cylinder(4,4,4,true);
   }
  */ 
   hull(){
	translate([33/2+14,33.2/2+1,0]) cylinder(4.1,3,3,true);
	translate([33/2-19,33.2/2+1,0]) cylinder(4.1,3,3,true);
	translate([33/2+14,-33.2/2+1,0]) cylinder(4.1,3,3,true);
	translate([33/2-19,-33.2/2+1,0]) cylinder(4.1,3,3,true);
   }


}

module fabscan_cam_mount(){
 //DJL added camera board stand-offs
 union() {
   // add 2 raised mounts to keep camera board off the main mount surface
   translate([2.2,-0.9,2.0-0.05]) cube([2,10,1.5]);
   translate([23.6,-0.9,2.0-0.05]) cube([2,10,1.5]);

     difference(){
    plate();
      translate([14,-18,0]) hull(){
  	  translate([-3,0,0]) cylinder(4.1,5,5,true);
	  translate([3,0,0]) cylinder(4.1,5,5,true);
    }
    translate([14,-14,0]) cube([22,20,10],true);
    fabscan_mount_holes();
    translate([14,4,0]) pi_cam_holes();
    translate([14,1,0]) led_ring_holes();
   }
  }
} //DJL union

module led_ring_holes(){
	translate([33/2,-33.2/2,0]) cylinder(4.1,1.1,1.1,true);
	translate([33/2,33.2/2,0]) cylinder(4.1,1.1,1.1,true);
	translate([-33/2,-33.2/2,0]) cylinder(4.1,1.1,1.1,true);
	translate([-33/2,33.2/2,0]) cylinder(4.1,1.1,1.1,true);
	
}

module pi_cam_holes(){
	translate([21/2,-12.2/2,0]) cylinder(4.1,1.1,1.1,true);
	translate([-21/2,-12.2/2,0]) cylinder(4.1,1.1,1.1,true);
	translate([21/2,12.5/2,0]) cylinder(4.1,1.1,1.1,true);
	translate([-21/2,12.5/2,0]) cylinder(4.1,1.1,1.1,true);
	//translate([0,-3,0]) cube([24,25,4],true);
}	

module fabscan_mount_holes(){
    //DJL unknown 2 holes?
	//translate([-25.2,0,0]) cylinder(4.1,1.1,1.1,true);
	//translate([25.2,-8,0]) cylinder(4.1,1.1,1.1,true);

	//DJL org translate([28.2,4,0]) #cylinder(4.1,1.6,1.6,true);
	translate([29.2,4,0]) #cylinder(4.1,1.6,1.6,true);
	translate([-1.2,4,0]) cylinder(4.1,1.6,1.6,true);
	translate([14,15,0]) cylinder(4.1,1.6,1.6,true);

}

