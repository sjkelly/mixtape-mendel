include <config.scad>
//framerodsize = 8;
//framerodtap =7;
//vertexwall = 2;
//vertexthick = 22;
//triangle= 60;
//mirror=false;
$fn= 59;
module tappedvertex(){
difference(){
	union(){
	translate([framerodsize,framerodsize,0])cylinder(r=framerodsize/2+vertexwall, h=vertexthick);
	translate([-framerodsize,-framerodsize,0])cylinder(r=framerodsize/2+vertexwall, h=vertexthick);
	translate([framerodsize*1.5+vertexwall,0,framerodsize/2+vertexwall])rotate([0,-90,0])cylinder(r=framerodsize/2+vertexwall, h=framerodsize*3+vertexwall*2);
	translate([0,0,framerodsize*1.5+vertexwall])rotate([0,-90,-triangle])cylinder(r=framerodsize/2+vertexwall, h=framerodsize*3+vertexwall*2,center=true);

	translate([0,0,(framerodsize*1.25+vertexwall*2)/2])rotate([0,0,-triangle])cube([framerodsize*3+vertexwall*2,framerodsize*0.75+vertexwall*2,framerodsize*1.25+vertexwall*2], center=true);
	translate([-framerodsize*1.5-vertexwall,-framerodsize/2-vertexwall/2,0])cube([framerodsize*3+vertexwall*2,framerodsize+vertexwall,vertexwall+framerodsize/2]);
	translate([0,0,vertexthick/2])rotate([0,0,45])cube([framerodsize*3,framerodsize+vertexwall*2,vertexthick], center=true);
	}


translate([framerodsize,framerodsize,-1])cylinder(r=framerodtap/2, h=vertexthick+2);
translate([-framerodsize,-framerodsize,-1])cylinder(r=framerodtap/2, h=vertexthick+2);
translate([framerodsize*1.5+vertexwall+1,0,framerodsize/2+vertexwall])rotate([0,-90,0])cylinder(r=framerodsize/2, h=framerodsize*3+vertexwall*2+2);
translate([0,0,framerodsize*1.5+vertexwall])rotate([0,-90,-triangle])cylinder(r=framerodsize/2, h=framerodsize*3+vertexwall*2+2,center=true);
}
}

module untappedvertex(){
mirror(){
difference(){
	union(){
	translate([framerodsize,framerodsize,0])cylinder(r=framerodsize/2+vertexwall, h=vertexthick);
	translate([-framerodsize,-framerodsize,0])cylinder(r=framerodsize/2+vertexwall, h=vertexthick);
	translate([framerodsize*1.5+vertexwall,0,framerodsize/2+vertexwall])rotate([0,-90,0])cylinder(r=framerodsize/2+vertexwall, h=framerodsize*3+vertexwall*2);
	translate([0,0,framerodsize*1.5+vertexwall])rotate([0,-90,-triangle])cylinder(r=framerodsize/2+vertexwall, h=framerodsize*3+vertexwall*2,center=true);

	translate([0,0,(framerodsize*1.25+vertexwall*2)/2])rotate([0,0,-triangle])cube([framerodsize*3+vertexwall*2,framerodsize*0.75+vertexwall*2,framerodsize*1.25+vertexwall*2], center=true);
	translate([-framerodsize*1.5-vertexwall,-framerodsize/2-vertexwall/2,0])cube([framerodsize*3+vertexwall*2,framerodsize+vertexwall,vertexwall+framerodsize/2]);
	translate([0,0,vertexthick/2])rotate([0,0,45])cube([framerodsize*3,framerodsize+vertexwall*2,vertexthick], center=true);
	}


translate([framerodsize,framerodsize,-1])cylinder(r=framerodsize/2, h=vertexthick+2);
translate([-framerodsize,-framerodsize,-1])cylinder(r=framerodsize/2, h=vertexthick+2);
translate([framerodsize*1.5+vertexwall+1,0,framerodsize/2+vertexwall])rotate([0,-90,0])cylinder(r=framerodsize/2, h=framerodsize*3+vertexwall*2+2);
translate([0,0,framerodsize*1.5+vertexwall])rotate([0,-90,-triangle])cylinder(r=framerodsize/2, h=framerodsize*3+vertexwall*2+2,center=true);
}
}
}
translate([17,18,0])tappedvertex();
translate([-17,-18,0])tappedvertex();
translate([-17,18,0])untappedvertex();
translate([17,-18,0])untappedvertex();