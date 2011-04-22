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

difference(){
union(){
		translate([0,0,(frameroddia/2+toprodwall)])rotate([-90,0,0])cylinder(r=frameroddia/2+toprodwall, h=nemasize*2.54*10*sin(45));
		translate([toprodspacing,0,(frameroddia/2+toprodwall)])rotate([-90,0,0])cylinder(r=frameroddia/2+toprodwall, h=nemasize*2.54*10*sin(45));
		translate([-frameroddia/4-toprodwall,0,0])cube([toprodspacing+(frameroddia/4+toprodwall)*2,nemasize*2.54*10*sin(45),toppiecethick]);
		translate([toprodspacing/2-(nemasize*2.54*sin(45)*5),siderodwall+frameroddia/2-(nemasize*2.54*sin(45)*5)+bushingod/2+nutdia/2+nutwall,0]){
		//motor construction
		translate([nemasize*2.54*sin(45)*10,nemasize*2.54*sin(45)*10,0])cylinder(r=(secscrewdia/2+motortabwall), h=toppiecethick);
		translate([0,nemasize*2.54*sin(45)*10,0])cylinder(r=(secscrewdia/2+motortabwall), h=toppiecethick);
		translate([nemasize*2.54*sin(45)*10,0,0])cylinder(r=(secscrewdia/2+motortabwall), h=toppiecethick);
		translate([0,0,0])cylinder(r=(secscrewdia/2+motortabwall), h=toppiecethick);
		translate([nemasize*2.54*sin(45)*5,nemasize*2.54*sin(45)*5,0])cylinder(r=motorcenter/2+motorcenterwall, h=toppiecethick); //motorcenter
		translate([-(secscrewdia/2+motortabwall)*sin(45),(secscrewdia/2+motortabwall)*sin(45),0])rotate([0,0,-45])cube([secscrewdia+motortabwall*2,nemasize*2.54*10,toppiecethick]);
		translate([nemasize*2.54*sin(45)*10-((secscrewdia/2+motortabwall)*sin(45)),-(secscrewdia/2+motortabwall)*sin(45),0])rotate([0,0,45])cube([secscrewdia+motortabwall*2,nemasize*2.54*10,toppiecethick]);
			}
		translate([toprodspacing/2,frameroddia+siderodwall*2,-1])cylinder(r=smoothroddia/2+siderodwall,h=toppiecethick);
			
		translate([toprodspacing-cos(triangle/2)*frameroddia/2-frameroddia,frameroddia/2+siderodwall,cos(triangle/2)*frameroddia/2])rotate([0,triangle/2,0])cylinder(r=frameroddia/2+siderodwall, h=(frameroddia+toprodwall*2));
		translate([cos(triangle/2)*frameroddia/2+frameroddia,frameroddia/2+siderodwall,cos(triangle/2)*frameroddia/2])rotate([0,-triangle/2,0])cylinder(r=frameroddia/2+siderodwall, h=(frameroddia+toprodwall*2));
	
	
}

		translate([0,0,-2])cube([100,100,2]);
		translate([0,-1,(frameroddia/2+toprodwall)])rotate([-90,0,0])cylinder(r=frameroddia/2, h=100+2);
		translate([toprodspacing,-1,(frameroddia/2+toprodwall)])rotate([-90,0,0])cylinder(r=frameroddia/2, h=100+2);
		translate([toprodspacing-cos(triangle/2)*frameroddia/2-frameroddia,frameroddia/2+siderodwall,cos(triangle/2)*frameroddia/2])rotate([0,triangle/2,0])cylinder(r=tapsize/2, h=100,center=true);
		translate([cos(triangle/2)*frameroddia/2+frameroddia,frameroddia/2+siderodwall,cos(triangle/2)*frameroddia/2])rotate([0,-triangle/2,0])cylinder(r=tapsize/2, h=100,center=true);
		
	
		
		translate([toprodspacing/2,frameroddia/2+siderodwall,-1])cylinder(r=smoothroddia/2,h=toppiecethick+2);

		translate([toprodspacing/2-(nemasize*2.54*sin(45)*5),siderodwall+frameroddia/2-(nemasize*2.54*sin(45)*5)+bushingod/2+nutdia/2+nutwall,0]){
		//motor screws
		translate([nemasize*2.54*sin(45)*10,nemasize*2.54*sin(45)*10,0])cylinder(r=secscrewdia/2, h=toppiecethick);
		translate([0,nemasize*2.54*sin(45)*10,0])cylinder(r=secscrewdia/2, h=toppiecethick);
		translate([nemasize*2.54*sin(45)*10,0,0])cylinder(r=secscrewdia/2, h=toppiecethick);
		translate([0,0,0])cylinder(r=secscrewdia/2, h=toppiecethick);
		translate([nemasize*2.54*sin(45)*5,nemasize*2.54*sin(45)*5,0])cylinder(r=motorcenter/2, h=toppiecethick); //motorcenter
			}

}
