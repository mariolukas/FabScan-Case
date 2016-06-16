//FAB SCAN ALT LASER HOLDER
//JACK TAYLOR 2016
BASE_DIAMETER=35;
HBD=BASE_DIAMETER/2;
LASER_DIAMETER=10;
PLUG_HEIGHT=4.81;
TURRET_HEIGHT=38 - PLUG_HEIGHT;
   CC = TURRET_HEIGHT-HBD+2*PLUG_HEIGHT;

module turret()
{
    cylinder(r=HBD, h=PLUG_HEIGHT);
 

    union()
    {
    translate([-HBD,0,CC])
    rotate([0,90,0])
    cylinder(r=HBD,h=BASE_DIAMETER);
    }
    {
    translate([-HBD,-HBD,PLUG_HEIGHT])
    cube([BASE_DIAMETER,BASE_DIAMETER,PLUG_HEIGHT+HBD]);
    }

}

difference()
{
turret();
color("blue")
translate([-HBD-1,0,CC])
rotate([0,90,0])
cylinder(r=LASER_DIAMETER/2,h=BASE_DIAMETER+2);
}

