//vertexhole = 8; //the diameter of the vertex hole in whosawhatasis vertex. Really important these values match.
//partthick =9;
//wallmulti = 1.8; //the wall thickness multiplier
//motorwallmulti = 2; //multiplier for the motor holes because you might want them thicker
//centerwallmulti = 1.5; //multiplier for the center hole because you might want them thinner
//nemasize = 1.7;
//motorscrew = 4; //diameter of the motor attachment screw
//motorcenter = 24; //center hole size for the motor
include <config.scad>;
$fn = 30;

//construction
	difference(){
		union(){
		//vertex interfaces
		translate([nemasize*2.54*10,nemasize*2.54*5*sin(45),0])cylinder(r=vertexhole/2*wallmulti, h=partthick);
		translate([vertexhole*3*sin(45)+(nemasize*2.54*10),nemasize*2.54*5*sin(45)-vertexhole*3*sin(45),0])cylinder(r=vertexhole/2*wallmulti, h=partthick);
		//connetors
		translate([nemasize*2.54*10-(sin(45)*vertexhole/2*wallmulti),nemasize*2.54*5*sin(45)-vertexhole/2*wallmulti*sin(45),0])rotate([0,0,-45])cube([vertexhole*3,vertexhole*wallmulti,partthick]);
		translate([nemasize*2.54*5*sin(45),nemasize*2.54*5*sin(45)-vertexhole/2*wallmulti,0])cube([nemasize*2.54*5+vertexhole/2*wallmulti,vertexhole*wallmulti,partthick]);
		//motor construction
		translate([nemasize*2.54*sin(45)*10,nemasize*2.54*sin(45)*10,0])cylinder(r=motorscrew/2*motorwallmulti, h=partthick);
		translate([0,nemasize*2.54*sin(45)*10,0])cylinder(r=motorscrew/2*motorwallmulti, h=partthick);
		translate([nemasize*2.54*sin(45)*10,0,0])cylinder(r=motorscrew/2*motorwallmulti, h=partthick);
		translate([0,0,0])cylinder(r=motorscrew/2*motorwallmulti, h=partthick);
		translate([nemasize*2.54*sin(45)*5,nemasize*2.54*sin(45)*5,0])cylinder(r=motorcenter/2*centerwallmulti, h=partthick); //motorcenter
		translate([-motorscrew/2*motorwallmulti*sin(45),motorscrew/2*motorwallmulti*sin(45),0])rotate([0,0,-45])cube([motorscrew*motorwallmulti,nemasize*2.54*10,partthick]);
		translate([nemasize*2.54*sin(45)*10-(motorscrew/2*motorwallmulti*sin(45)),-motorscrew/2*motorwallmulti*sin(45),0])rotate([0,0,45])cube([motorscrew*motorwallmulti,nemasize*2.54*10,partthick]);
		}
		//vertex interfaces
		translate([nemasize*2.54*10,nemasize*2.54*5*sin(45),0])cylinder(r=framerodtap/2, h=partthick);
		translate([vertexhole*3*sin(45)+(nemasize*2.54*10),nemasize*2.54*5*sin(45)-vertexhole*3*sin(45),0])cylinder(r=vertexhole/2, h=partthick);
		//motor screws
		translate([nemasize*2.54*sin(45)*10,nemasize*2.54*sin(45)*10,0])cylinder(r=motorscrew/2, h=partthick);
		translate([0,nemasize*2.54*sin(45)*10,0])cylinder(r=motorscrew/2, h=partthick);
		translate([nemasize*2.54*sin(45)*10,0,0])cylinder(r=motorscrew/2, h=partthick);
		translate([0,0,0])cylinder(r=motorscrew/2, h=partthick);
		translate([nemasize*2.54*sin(45)*5,nemasize*2.54*sin(45)*5,0])cylinder(r=motorcenter/2, h=partthick); //motorcenter
	}