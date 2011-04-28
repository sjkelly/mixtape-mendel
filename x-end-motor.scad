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

	//motor construction
		translate([bushingod/2+nutwall,bushingod/2+nutwall*2+nutdia,smoothroddia+nutwall*sin(45)+xrodspacing/2-nemasize*2.54*5*sin(45)])rotate([0,-90,0]){
		translate([nemasize*2.54*sin(45)*10,nemasize*2.54*sin(45)*10,0])cylinder(r=(secscrewdia/2+motortabwall), h=motorinterface);
		translate([0,nemasize*2.54*sin(45)*10,0])cylinder(r=(secscrewdia/2+motortabwall), h=motorinterface);
		translate([nemasize*2.54*sin(45)*10,0,0])cylinder(r=(secscrewdia/2+motortabwall), h=motorinterface);
		translate([0,0,0])cylinder(r=(secscrewdia/2+motortabwall), h=motorinterface);
		translate([nemasize*2.54*sin(45)*5,nemasize*2.54*sin(45)*5,0])cylinder(r=motorcenter/2+motorcenterwall, h=motorinterface); //motorcenter
		translate([-(secscrewdia/2+motortabwall)*sin(45),(secscrewdia/2+motortabwall)*sin(45),0])rotate([0,0,-45])cube([secscrewdia+motortabwall*2,nemasize*2.54*10,motorinterface]);
		translate([nemasize*2.54*sin(45)*10-((secscrewdia/2+motortabwall)*sin(45)),-(secscrewdia/2+motortabwall)*sin(45),0])rotate([0,0,45])translate([-(smoothroddia+xrodspacing/2-nemasize*2.54*5*sin(45))/sin(45),0,0])cube([secscrewdia+motortabwall*2+(smoothroddia+xrodspacing/2-nemasize*2.54*5*sin(45))/sin(45),nemasize*2.54*10,motorinterface]);
		translate([nemasize*2.54*sin(45)*10-((secscrewdia/2+motortabwall)*sin(45)),-(secscrewdia/2+motortabwall)*sin(45),0])rotate([0,0,45])translate([-(smoothroddia+xrodspacing/2-nemasize*2.54*5*sin(45))/sin(45)+(secscrewdia/2+motortabwall),secscrewdia/2+motortabwall,0])cube([(smoothroddia+xrodspacing/2-nemasize*2.54*5*sin(45))/sin(45),nemasize*2.54*10,motorinterface]);
		rotate([0,90,0])translate([-1,(nemasize*2.54*5*sin(45))-motorinterface/2,-smoothroddia/sin(45)-nutwall*2/sin(45)-secscrewdia/2])cube([motorinterface+1,motorinterface,nemasize*10*2.54]);
		rotate([0,90,0])translate([0,(nemasize*2.54*5*sin(45))+motorinterface/2,-smoothroddia/sin(45)-nutwall*2/sin(45)-secscrewdia/2])rotate([0,0,180])cube([motorinterface,bushingod/2+nutwall*2+nutdia+nemasize*2.54*sin(45)*5,nemasize*10*2.54]);
		rotate([0,90,0])translate([motorinterface/2,nemasize*2.54*5*sin(45),nemasize*2.54*5*sin(45)])rotate([0,45,180])cube([motorinterface/sin(45)*0.5,bushingod/2+nutwall*2+nutdia+nemasize*2.54*sin(45)*5,motorinterface/sin(45)*0.5]);
			}


	}
	//cleanup cause my math sucks
	translate([-50,-50,-5])cube([100,100,5]);

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

	//leadscrew
	translate([0,bushingod/2+nutdia/2+nutwall,0])rotate([0,0,30])cylinder(r=nutdia/2, h=nutheight, $fn=6);
	translate([0,bushingod/2+nutdia/2+nutwall,nutheight])rotate([0,0,30])cylinder(r=tapsize/2, h=nutheight);
	//motor screws
		translate([bushingod/2+nutwall,bushingod/2+nutwall*2+nutdia,smoothroddia+nutwall*sin(45)+xrodspacing/2-nemasize*2.54*5*sin(45)])rotate([0,-90,0]){
		translate([nemasize*2.54*sin(45)*10,nemasize*2.54*sin(45)*10,-1])cylinder(r=secscrewdia/2, h=motorinterface+2);
		translate([0,nemasize*2.54*sin(45)*10,-1])cylinder(r=secscrewdia/2, h=motorinterface+2);
		translate([nemasize*2.54*sin(45)*10,0,-1])cylinder(r=secscrewdia/2, h=motorinterface+2);
		translate([0,0,-1])cylinder(r=secscrewdia/2, h=motorinterface+2);
		translate([nemasize*2.54*sin(45)*5,nemasize*2.54*sin(45)*5,-1-motorinterface])cylinder(r=motorcenter/2, h=motorinterface*2+2); //motorcenter
			}
		
}
