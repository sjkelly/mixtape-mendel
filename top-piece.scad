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
			
			//top rods
			translate([frameroddia,0,frameroddia])rotate([-90,0,0])cylinder(r = frameroddia, h = nemasize*10*2.54*sin(45));		
			translate([frameroddia+frameroddia*4*cos(30)+(nutapothem/cos(30)*cos(60))*2+motorbody,0,frameroddia])rotate([-90,0,0])cylinder(r = frameroddia, h = nemasize*10*2.54*sin(45));

			//side rods
			translate([frameroddia+frameroddia*2*cos(30),frameroddia,0])rotate([0,-30,0])cylinder(r = frameroddia, h = nemasize*10*2.54*sin(45));
			translate([frameroddia+frameroddia*2*cos(30)+(nutapothem/cos(30)*cos(60))*2+motorbody,frameroddia,0])rotate([0,30,0])cylinder(r = frameroddia, h = nemasize*10*2.54*sin(45));

			//bottom bulk
			translate([frameroddia/4,0,0])cube([frameroddia*1.5+frameroddia*4*cos(30)+(nutapothem/cos(30)*cos(60))*2+motorbody, nemasize*10*2.54*sin(45), frameroddia]);
			//motor
			translate([frameroddia+frameroddia*2*cos(30)+nutapothem/cos(30)*cos(60)+motorbody/2,frameroddia+bushingod/2+bushingod/4+(nutapothem/cos(30))/2,0])cylinder(r = motorbody/2, h = frameroddia);
			translate([(frameroddia+frameroddia*2*cos(30)+nutapothem/cos(30)*cos(60)+motorbody/2)+(nemasize*2.54*5*sin(45)),(frameroddia+bushingod/2+bushingod/4+(nutapothem/cos(30))/2)+(nemasize*2.54*5*sin(45)),0])cylinder(r =  (motorbody-nemasize*2.54*10*sin(45))/2, h = frameroddia);
			translate([(frameroddia+frameroddia*2*cos(30)+nutapothem/cos(30)*cos(60)+motorbody/2)-(nemasize*2.54*5*sin(45)),(frameroddia+bushingod/2+bushingod/4+(nutapothem/cos(30))/2)+(nemasize*2.54*5*sin(45)),0])cylinder(r = (motorbody-nemasize*2.54*10*sin(45))/2, h = frameroddia);
			
		}

		//top rods
		translate([frameroddia,-1,frameroddia])rotate([-90,0,0])cylinder(r = frameroddia/2, h = nemasize*10*2.54*sin(45)+2);		
		translate([frameroddia+frameroddia*4*cos(30)+(nutapothem/cos(30)*cos(60))*2+motorbody,-1,frameroddia])rotate([-90,0,0])cylinder(r = frameroddia/2, h = nemasize*10*2.54*sin(45)+2);

		//side rods
		translate([frameroddia+frameroddia*2*cos(30),frameroddia,0])rotate([0,-30,0])cylinder(r = frameroddia/2, h = nemasize*10*2.54*sin(45)+1);
		translate([frameroddia+frameroddia*2*cos(30)+(nutapothem/cos(30)*cos(60))*2+motorbody,frameroddia,0])rotate([0,30,0])cylinder(r = frameroddia/2, h = nemasize*10*2.54*sin(45)+1);

		//nut traps
		translate([frameroddia+frameroddia*2*cos(30),frameroddia,0])rotate([0,-30,0])rotate([0,0,30])translate([0,0,-1-(nutheight/cos(30))/2])cylinder(r = nutapothem/cos(30)*0.5, h = nutheight/cos(30)+2, $fn =6);
		translate([frameroddia+frameroddia*2*cos(30)+(nutapothem/cos(30)*cos(60))*2+motorbody,frameroddia,0])rotate([0,30,0])rotate([0,0,30])translate([0,0,-1-(nutheight/cos(30))/2])cylinder(r = nutapothem/cos(30)*0.5, h = nutheight/cos(30)+2, $fn =6);

		//bottom cleanup
		translate([0,0,-nutapothem])cube([frameroddia*2+frameroddia*4*cos(30)+(nutapothem/cos(30)*cos(60))*2+motorbody,nemasize*2.54*10,nutapothem]);
	
		//smooth rod hole
		translate([frameroddia+frameroddia*2*cos(30)+nutapothem/cos(30)*cos(60)+motorbody/2,frameroddia,-1])cylinder(r = smoothroddia/2, h = frameroddia+2);

		//motor holes
		translate([frameroddia+frameroddia*2*cos(30)+nutapothem/cos(30)*cos(60)+motorbody/2,frameroddia+bushingod/2+bushingod/4+(nutapothem/cos(30))/2,-1])cylinder(r = motorcenter/2, h = frameroddia+2);
		translate([(frameroddia+frameroddia*2*cos(30)+nutapothem/cos(30)*cos(60)+motorbody/2)-(nemasize*2.54*5*sin(45)),(frameroddia+bushingod/2+bushingod/4+(nutapothem/cos(30))/2)-(nemasize*2.54*5*sin(45)),-1])cylinder(r = secscrewdia/2, h = frameroddia+2);
		translate([(frameroddia+frameroddia*2*cos(30)+nutapothem/cos(30)*cos(60)+motorbody/2)+(nemasize*2.54*5*sin(45)),(frameroddia+bushingod/2+bushingod/4+(nutapothem/cos(30))/2)-(nemasize*2.54*5*sin(45)),-1])cylinder(r = secscrewdia/2, h = frameroddia+2);
		translate([(frameroddia+frameroddia*2*cos(30)+nutapothem/cos(30)*cos(60)+motorbody/2)+(nemasize*2.54*5*sin(45)),(frameroddia+bushingod/2+bushingod/4+(nutapothem/cos(30))/2)+(nemasize*2.54*5*sin(45)),-1])cylinder(r = secscrewdia/2, h = frameroddia+2);
		translate([(frameroddia+frameroddia*2*cos(30)+nutapothem/cos(30)*cos(60)+motorbody/2)-(nemasize*2.54*5*sin(45)),(frameroddia+bushingod/2+bushingod/4+(nutapothem/cos(30))/2)+(nemasize*2.54*5*sin(45)),-1])cylinder(r = secscrewdia/2, h = frameroddia+2);
	}


