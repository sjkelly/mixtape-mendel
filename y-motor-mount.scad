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

include <config.scad>;
$fn = 31;

	difference(){

		union(){

			//vertex interfaces
			translate([nemasize*2.54*sin(45)*5+motorbody/2+(nutapothem-frameroddia)+frameroddia/2,nemasize*2.54*5*sin(45),0])cylinder(r=frameroddia, h=frameroddia);
			translate([frameroddia*3*sin(45)+(nemasize*2.54*sin(45)*5+motorbody/2+(nutapothem-frameroddia)+frameroddia/2),(nemasize*2.54*5*sin(45))-frameroddia*3*sin(45),0])cylinder(r=frameroddia, h=frameroddia);
		
			//connetors
			translate([frameroddia*3*sin(45)+(nemasize*2.54*sin(45)*5+motorbody/2+(nutapothem-frameroddia)+frameroddia/2),(nemasize*2.54*5*sin(45))-frameroddia*3*sin(45),0])rotate([0,0,135])translate([0,-frameroddia,0])cube([frameroddia*3,frameroddia*2,frameroddia]);
			translate([nemasize*2.54*5*sin(45),nemasize*2.54*5*sin(45)-frameroddia,0])cube([motorbody/2+frameroddia/2+(nutapothem-frameroddia),frameroddia*2,frameroddia]);

			//motor construction
			translate([nemasize*2.54*sin(45)*10,nemasize*2.54*sin(45)*10,0])cylinder(r=((nemasize*2.54*5*sin(45))-secscrewdia)/2, h=frameroddia);
			translate([nemasize*2.54*sin(45)*10,0,0])cylinder(r=((nemasize*2.54*5*sin(45))-secscrewdia)/2, h=frameroddia);
			translate([0,0,0])cylinder(r=((nemasize*2.54*5*sin(45))-secscrewdia)/2, h=frameroddia);
			translate([nemasize*2.54*sin(45)*5,nemasize*2.54*sin(45)*5,0])cylinder(r=motorbody/2, h=frameroddia); //motorcenter
			rotate([0,0,-45])translate([-((nemasize*2.54*5*sin(45))-secscrewdia)/2,0,0])cube([((nemasize*2.54*5*sin(45))-secscrewdia),nemasize*2.54*10,frameroddia]);
			translate([nemasize*2.54*sin(45)*10,0,0])rotate([0,0,45])translate([-((nemasize*2.54*5*sin(45))-secscrewdia)/2,0,0])cube([((nemasize*2.54*5*sin(45))-secscrewdia),nemasize*2.54*5,frameroddia]);

		}

		//vertex interfaces
		translate([nemasize*2.54*sin(45)*5+motorbody/2+(nutapothem-frameroddia)+frameroddia/2,nemasize*2.54*5*sin(45),-1])cylinder(r=frameroddia/2, h=frameroddia+2);
		translate([frameroddia*3*sin(45)+(nemasize*2.54*sin(45)*5+motorbody/2+(nutapothem-frameroddia)+frameroddia/2),(nemasize*2.54*5*sin(45))-frameroddia*3*sin(45),-1])cylinder(r=frameroddia/2, h=frameroddia+2);

		//motor screws
		translate([nemasize*2.54*sin(45)*10,nemasize*2.54*sin(45)*10,-1])cylinder(r=secscrewdia/2, h=frameroddia+2);
		translate([nemasize*2.54*sin(45)*10,0,-1])cylinder(r=secscrewdia/2, h=frameroddia+2);
		translate([0,0,-1])cylinder(r=secscrewdia/2, h=frameroddia+2);
		translate([nemasize*2.54*sin(45)*5,nemasize*2.54*sin(45)*5,-1])cylinder(r=motorcenter/2, h=frameroddia+2); //motorcenter

		//cleanup
		rotate([0,0,-45])translate([-((nemasize*2.54*5*sin(45))-secscrewdia)/2-motorbody+motorcenter,0,-1])cube([motorbody-motorcenter,nemasize*2.54*10,frameroddia+2]);
		
	}

