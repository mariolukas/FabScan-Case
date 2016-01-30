/*
* Turntable Holder for FabScan CUBE
* http://hci.rwth-aachen.de/fabscancube
* Copyright (C) 2013 Michael Neumann, floyd871@gmx.de
*/

$fn=80;

difference(){
  union(){
    cylinder (h=9, r1=30, r2=10);
    cylinder (h=17, r=10);
  }
  cylinder (h=17, r=2.6);
  translate([0,0,13]) rotate([0,90,0]) cylinder (h=20, r=1.6,center=true);
  translate([6,0,14])  cube ([2.5,6.2,7],center=true);
  translate([-6,0,14]) cube ([2.5,6.2,7],center=true);


  for(i=[45:90:360]){
    translate([sin(i)*15,cos(i)*15,5]) 
    union(){
     cylinder(h=10, r=1.6, center=true);
     translate ([0,0,2.5]) cylinder(h=5, r=3.5, center=true);
    }

  }
  for(i=[0:90:360]){
    translate([sin(i)*19,cos(i)*19,5]) rotate ([0,0,i]) cube([10,15,10], center=true);
  }
}
