/*
  Mixtape Mendel - A Fully Parametric RepRap
    Copyright (C) 2011  Steve Kelly

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

include <config.scad>;
$fn = 31;
mirror(){
difference(){
	union(){

	//Bushing Tower
	translate([0,0,0])cylinder(r=bushingod/2+nutwall, h=smoothroddia+nutwall*sin(45)+xrodspacing);
	translate([-bushingod/2-nutwall,0,0])cube([bushingod+nutwall*2,bushingod/2+nutwall,smoothroddia+nutwall*sin(45)+xrodspacing]);

	//x rods
	translate([bushingod/2,-bushingod/2-nutwall,smoothroddia+nutwall*sin(45)])rotate([0,45,0])cube([smoothroddia+nutwall*2,bushingod+nutwall*2+nutdia,smoothroddia+nutwall*2]);
	translate([towergap/2,-bushingod/2-nutwall,0])cube([bushingod/2+nutwall/sin(45)+smoothroddia*sin(45)-towergap/2,bushingod+nutwall*2+nutdia,(smoothroddia+nutwall*2)*2*sin(45)]);
	translate([bushingod/2,-bushingod/2,smoothroddia+nutwall*sin(45)+xrodspacing])rotate([0,45,0])translate([0,0,-(bushingod+nutwall)/sin(45)])cube([smoothroddia+nutwall*2,bushingod+nutwall,smoothroddia+nutwall*2+(bushingod+nutwall)/sin(45)]);

	//leadscrew
	translate([0,bushingod/2+nutdia/2+nutwall,nutheight])rotate([0,0,30])cylinder(r1=nutdia/2+nutwall, r2=tapsize, h=nutheight, $fn=6);
	translate([0,bushingod/2+tapsize/2,nutheight])rotate([0,0,30])cylinder(r1=nutdia/2+nutwall, r2=tapsize, h=nutheight, $fn=6);
	translate([0,bushingod/2+nutdia/2+nutwall,0])rotate([0,0,30])cylinder(r=nutdia/2+nutwall, h=nutheight, $fn=6);
	translate([0,bushingod/2+nutwall,0])rotate([0,0,30])cylinder(r=nutdia/2+nutwall, h=nutheight, $fn=6);
	
	//idler slides
	translate([nutwall+bushingod/2+smoothroddia/sin(45)+1,bushingod/2+nutwall,smoothroddia+nutwall*sin(45)])cube([frameroddia/2,nutdia,xrodspacing/2-bearingod/2+pulleydia-beltthick/2]);	
	translate([nutwall+bushingod/2+smoothroddia/sin(45)+1,bushingod/2+nutwall-(nutwall/sin(45)),smoothroddia+nutwall*sin(45)])cube([frameroddia/2,(nutwall/sin(45)),xrodspacing]);	
	translate([nutwall+bushingod/2+smoothroddia/sin(45)+1,bushingod/2+nutwall+nutdia-(nutwall/sin(45))-frameroddia/2,smoothroddia+nutwall*sin(45)+xrodspacing/2-bearingod/2+pulleydia-beltthick/2])rotate([0,90,0])cylinder(r=frameroddia/2+(nutwall/sin(45)),h=frameroddia/2);
	
	}
	
	//bushing holder
	translate([0,0,0])cylinder(r=bushingod/2, h=smoothroddia+nutwall*sin(45)+xrodspacing);
	translate([-bushingod/2,0,0])cube([bushingod,bushingod/2,smoothroddia+nutwall*sin(45)+xrodspacing]);
	translate([-towergap/2,-bushingod,0])cube([towergap,bushingod,smoothroddia+nutwall*sin(45)+xrodspacing]);

	//XRODS
	translate([nutwall/sin(45)+bushingod/2,-bushingod/2-nutwall,smoothroddia+nutwall*sin(45)])rotate([0,45,0])cube([smoothroddia,bushingod+nutwall*2+nutdia,smoothroddia]);
	translate([nutwall/sin(45)+bushingod/2,-bushingod/2-nutwall,smoothroddia+nutwall*sin(45)+xrodspacing])rotate([0,45,0])cube([smoothroddia,bushingod+nutwall*2,smoothroddia]);
	
	//overflow clean up
	difference(){
		translate([-bushingod/2-nutwall,-bushingod/2-nutwall,0])cube([bushingod/2+nutwall,bushingod/2+nutwall,smoothroddia+nutwall*sin(45)+xrodspacing]);
		cylinder(r=bushingod/2+nutwall,h=smoothroddia+nutwall*sin(45)+xrodspacing);	
		}	

	//idler sides
	translate([nutwall+bushingod/2+smoothroddia/sin(45)+1-1,bushingod/2+nutwall+nutdia-(nutwall/sin(45))-frameroddia/2,smoothroddia+nutwall*sin(45)+xrodspacing/2-bearingod/2+pulleydia-beltthick/2])rotate([0,90,0])cylinder(r=frameroddia/2,h=frameroddia/2+2);
	
	//leadscrew
	translate([0,bushingod/2+nutdia/2+nutwall,0])rotate([0,0,30])cylinder(r=nutdia/2, h=nutheight, $fn=6);
	translate([0,bushingod/2+nutdia/2+nutwall,nutheight])rotate([0,0,30])cylinder(r=tapsize/2, h=nutheight);
		
}
}
