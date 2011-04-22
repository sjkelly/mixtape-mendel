/*  Mixtape Mendel - A Fully Parametric RepRap
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

//TODO
//*Motor right up on frame rod

include <config.scad>;
$fn = 31;

//construction
	difference(){
		union(){
		//vertex interfaces
		translate([nemasize*2.54*10,nemasize*2.54*5*sin(45),0])cylinder(r=frameroddia/2*ywallmulti, h=ymountthick);
		translate([frameroddia*3*sin(45)+(nemasize*2.54*10),nemasize*2.54*5*sin(45)-frameroddia*3*sin(45),0])cylinder(r=frameroddia/2*ywallmulti, h=ymountthick);
		//connetors
		translate([nemasize*2.54*10-(sin(45)*frameroddia/2*ywallmulti),nemasize*2.54*5*sin(45)-frameroddia/2*ywallmulti*sin(45),0])rotate([0,0,-45])cube([frameroddia*3,frameroddia*ywallmulti,ymountthick]);
		translate([nemasize*2.54*5*sin(45),nemasize*2.54*5*sin(45)-frameroddia/2*ywallmulti,0])cube([nemasize*2.54*5+frameroddia/2*ywallmulti,frameroddia*ywallmulti,ymountthick]);
		//motor construction
		translate([nemasize*2.54*sin(45)*10,nemasize*2.54*sin(45)*10,0])cylinder(r=(secscrewdia/2+motortabwall), h=ymountthick);
		translate([0,nemasize*2.54*sin(45)*10,0])cylinder(r=(secscrewdia/2+motortabwall), h=ymountthick);
		translate([nemasize*2.54*sin(45)*10,0,0])cylinder(r=(secscrewdia/2+motortabwall), h=ymountthick);
		translate([0,0,0])cylinder(r=(secscrewdia/2+motortabwall), h=ymountthick);
		translate([nemasize*2.54*sin(45)*5,nemasize*2.54*sin(45)*5,0])cylinder(r=motorcenter/2+motorcenterwall, h=ymountthick); //motorcenter
		translate([-(secscrewdia/2+motortabwall)*sin(45),(secscrewdia/2+motortabwall)*sin(45),0])rotate([0,0,-45])cube([(secscrewdia+motortabwall*2),nemasize*2.54*10,ymountthick]);
		translate([nemasize*2.54*sin(45)*10-((secscrewdia/2+motortabwall)*sin(45)),-(secscrewdia/2+motortabwall)*sin(45),0])rotate([0,0,45])cube([(secscrewdia+motortabwall*2),nemasize*2.54*10,ymountthick]);
		}
			//vertex interfaces
			translate([nemasize*2.54*10,nemasize*2.54*5*sin(45),0])cylinder(r=tapsize/2, h=ymountthick);
			translate([frameroddia*3*sin(45)+(nemasize*2.54*10),nemasize*2.54*5*sin(45)-frameroddia*3*sin(45),0])cylinder(r=frameroddia/2, h=ymountthick);
			//motor screws
			translate([nemasize*2.54*sin(45)*10,nemasize*2.54*sin(45)*10,0])cylinder(r=secscrewdia/2, h=ymountthick);
			translate([0,nemasize*2.54*sin(45)*10,0])cylinder(r=secscrewdia/2, h=ymountthick);
			translate([nemasize*2.54*sin(45)*10,0,0])cylinder(r=secscrewdia/2, h=ymountthick);
			translate([0,0,0])cylinder(r=secscrewdia/2, h=ymountthick);
			translate([nemasize*2.54*sin(45)*5,nemasize*2.54*sin(45)*5,0])cylinder(r=motorcenter/2, h=ymountthick); //motorcenter
	}
