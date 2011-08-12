include<config.scad>;
use <vertex.scad>;
use<y-motor-mount.scad>;
use<top-piece.scad>;
use<bar-clamp.scad>;
$fn =31;

//construction functions
module primarynut(){
	difference(){
	color([90/255,90/255,90/255])cylinder(r=nutdia/2, h = nutheight, $fn = 6);
	translate([0,0,-1])cylinder(r=frameroddia/2, h = nutheight+2);
	}
}
module threadedrod(length) {
	color([90/255,90/255,90/255])cylinder(r=frameroddia/2, h=length);
	echo("Threaded Rod:");
	echo(length);
}

//frame
translate([buildx,buildy+barclampwall*2+lowermdflength,0])rotate([90,0,0])rotate([0,90,0])tappedvertex();
translate([0,buildy+barclampwall*2+lowermdflength,0])rotate([90,0,0])rotate([0,-90,0])untappedvertex();
translate([buildx,0,0])rotate([0,90,0])rotate([0,0,90])untappedvertex();
translate([0,0,0])rotate([90,0,0])rotate([0,-90,0])tappedvertex();
translate([-frameroddia-siderodwall-vertexwall,buildy/2+toprodspacing/2+lowermdflength/2,buildz])rotate([0,180,0])rotate([0,0,-90])toppiece();
translate([buildx+frameroddia,buildy/2-toprodspacing/2+lowermdflength/2,buildz])rotate([0,180,0])rotate([0,0,90])toppiece();

//go nuts with nuts
translate([-vertexwall-frameroddia/2,-frameroddia-vertexwall*2,0])rotate([90,0,0])primarynut();
translate([-vertexwall-frameroddia/2,+frameroddia+vertexwall*2+nutheight,0])rotate([90,0,0])primarynut();

//y axis bits
translate([buildx/2,-motorbody-secscrewdia-motortabwall,0])rotate([0,0,90])rotate([90,0,0])ymotormount();

//z-axis

//echo the BOM
echo("Bill of Materials:");

