include <config.scad>
$fn= 59;

module tappedvertex(){
difference(){
	union(){
	translate([frameroddia,frameroddia,0])cylinder(r=frameroddia/2+vertexwall, h=frameroddia*2 + vertexwall*2);
	translate([-frameroddia,-frameroddia,0])cylinder(r=frameroddia/2+vertexwall, h=frameroddia*2 + vertexwall*2);
	translate([frameroddia*1.5+vertexwall,0,frameroddia/2+vertexwall])rotate([0,-90,0])cylinder(r=frameroddia/2+vertexwall, h=frameroddia*3+vertexwall*2);
	translate([0,0,frameroddia*1.5+vertexwall])rotate([0,-90,-triangle])cylinder(r=frameroddia/2+vertexwall, h=frameroddia*3+vertexwall*2,center=true);

	translate([0,0,(frameroddia*1.25+vertexwall*2)/2])rotate([0,0,-triangle])cube([frameroddia*3+vertexwall*2,frameroddia*0.75+vertexwall*2,frameroddia*1.25+vertexwall*2], center=true);
	translate([-frameroddia*1.5-vertexwall,-frameroddia/2-vertexwall/2,0])cube([frameroddia*3+vertexwall*2,frameroddia+vertexwall,vertexwall+frameroddia/2]);
	translate([0,0,(frameroddia*2 + vertexwall*2)/2])rotate([0,0,45])cube([frameroddia*3,frameroddia+vertexwall*2,frameroddia*2 + vertexwall*2], center=true);
	}


translate([frameroddia,frameroddia,-1])cylinder(r=tapsize/2, h=frameroddia*2 + vertexwall*2+2);
translate([-frameroddia,-frameroddia,-1])cylinder(r=tapsize/2, h=frameroddia*2 + vertexwall*2+2);
translate([frameroddia*1.5+vertexwall+1,0,frameroddia/2+vertexwall])rotate([0,-90,0])cylinder(r=frameroddia/2, h=frameroddia*3+vertexwall*2+2);
translate([0,0,frameroddia*1.5+vertexwall])rotate([0,-90,-triangle])cylinder(r=frameroddia/2, h=frameroddia*3+vertexwall*2+2,center=true);
}
}

module untappedvertex(){
mirror(){
difference(){
	union(){
	translate([frameroddia,frameroddia,0])cylinder(r=frameroddia/2+vertexwall, h=frameroddia*2 + vertexwall*2);
	translate([-frameroddia,-frameroddia,0])cylinder(r=frameroddia/2+vertexwall, h=frameroddia*2 + vertexwall*2);
	translate([frameroddia*1.5+vertexwall,0,frameroddia/2+vertexwall])rotate([0,-90,0])cylinder(r=frameroddia/2+vertexwall, h=frameroddia*3+vertexwall*2);
	translate([0,0,frameroddia*1.5+vertexwall])rotate([0,-90,-triangle])cylinder(r=frameroddia/2+vertexwall, h=frameroddia*3+vertexwall*2,center=true);

	translate([0,0,(frameroddia*1.25+vertexwall*2)/2])rotate([0,0,-triangle])cube([frameroddia*3+vertexwall*2,frameroddia*0.75+vertexwall*2,frameroddia*1.25+vertexwall*2], center=true);
	translate([-frameroddia*1.5-vertexwall,-frameroddia/2-vertexwall/2,0])cube([frameroddia*3+vertexwall*2,frameroddia+vertexwall,vertexwall+frameroddia/2]);
	translate([0,0,(frameroddia*2 + vertexwall*2)/2])rotate([0,0,45])cube([frameroddia*3,frameroddia+vertexwall*2,frameroddia*2 + vertexwall*2], center=true);
	}


translate([frameroddia,frameroddia,-1])cylinder(r=frameroddia/2, h=frameroddia*2 + vertexwall*2+2);
translate([-frameroddia,-frameroddia,-1])cylinder(r=frameroddia/2, h=frameroddia*2 + vertexwall*2+2);
translate([frameroddia*1.5+vertexwall+1,0,frameroddia/2+vertexwall])rotate([0,-90,0])cylinder(r=frameroddia/2, h=frameroddia*3+vertexwall*2+2);
translate([0,0,frameroddia*1.5+vertexwall])rotate([0,-90,-triangle])cylinder(r=frameroddia/2, h=frameroddia*3+vertexwall*2+2,center=true);
}
}
}
translate([17,18,0])tappedvertex(); //fully parameterize this bit
translate([-17,-18,0])tappedvertex();
translate([-17,18,0])untappedvertex();
translate([17,-18,0])untappedvertex();
