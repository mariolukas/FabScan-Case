//FABSCAN TURN TABLE MOTOR MOUNT
//JACK TAYLOR 2016

module motorshaft(height,diam,flatdiam)
{
    rd = diam/2;
    difference()
    {
    color("blue")
    cylinder(r=rd,h=height);
    color("pink")
    translate([-rd,-rd-flatdiam,-1])
    cube([diam,diam,height+2]);
    }
}

//motorshaft(22,5,4);

difference()
{
cylinder(r1=12,r2=7,h=10);
translate([0,0,-1])
motorshaft(12,6.5,5.95);
}

