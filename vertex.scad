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

include <config.scad>
$fn= 31;

module rightvertex(){

	difference(){

		union(){

			translate([frameroddia,frameroddia,0])cylinder(r=frameroddia/2+frameroddia/2, h=frameroddia*2 + frameroddia/2*2);
			translate([-frameroddia,-frameroddia,0])cylinder(r=frameroddia/2+frameroddia/2, h=frameroddia*2 + frameroddia/2*2);
			translate([frameroddia*1.5+frameroddia/2,0,frameroddia/2+frameroddia/2])rotate([0,-90,0])cylinder(r=frameroddia/2+frameroddia/2, h=frameroddia*3+frameroddia/2*2);
			translate([0,0,frameroddia*1.5+frameroddia/2])rotate([0,-90,-60])cylinder(r=frameroddia/2+frameroddia/2, h=frameroddia*3+frameroddia/2*2,center=true);
			translate([0,0,(frameroddia*1.25+frameroddia/2*2)/2])rotate([0,0,-60])cube([frameroddia*3+frameroddia/2*2,frameroddia*0.75+frameroddia/2*2,frameroddia*1.25+frameroddia/2*2], center=true);
			translate([-frameroddia*1.5-frameroddia/2,-frameroddia/2-frameroddia/2/2,0])cube([frameroddia*3+frameroddia/2*2,frameroddia+frameroddia/2,frameroddia/2+frameroddia/2]);
			translate([0,0,(frameroddia*2 + frameroddia/2*2)/2])rotate([0,0,45])cube([frameroddia*3,frameroddia+frameroddia/2*2,frameroddia*2 + frameroddia/2*2], center=true);

		}

		translate([frameroddia,frameroddia,-1])cylinder(r=frameroddia/2, h=frameroddia*2 + frameroddia/2*2+2);
		translate([-frameroddia,-frameroddia,-1])cylinder(r=frameroddia/2, h=frameroddia*2 + frameroddia/2*2+2);
		translate([frameroddia*1.5+frameroddia/2+1,0,frameroddia/2+frameroddia/2])rotate([0,-90,0])cylinder(r=frameroddia/2, h=frameroddia*3+frameroddia/2*2+2);
		translate([0,0,frameroddia*1.5+frameroddia/2])rotate([0,-90,-60])cylinder(r=frameroddia/2, h=frameroddia*3+frameroddia/2*2+2,center=true);

	}

}

module leftvertex(){

	mirror(){

		difference(){

			union(){

				translate([frameroddia,frameroddia,0])cylinder(r=frameroddia/2+frameroddia/2, h=frameroddia*2 + frameroddia/2*2);
				translate([-frameroddia,-frameroddia,0])cylinder(r=frameroddia/2+frameroddia/2, h=frameroddia*2 + frameroddia/2*2);
				translate([frameroddia*1.5+frameroddia/2,0,frameroddia/2+frameroddia/2])rotate([0,-90,0])cylinder(r=frameroddia/2+frameroddia/2, h=frameroddia*3+frameroddia/2*2);
				translate([0,0,frameroddia*1.5+frameroddia/2])rotate([0,-90,-60])cylinder(r=frameroddia/2+frameroddia/2, h=frameroddia*3+frameroddia/2*2,center=true);
			
				translate([0,0,(frameroddia*1.25+frameroddia/2*2)/2])rotate([0,0,-60])cube([frameroddia*3+frameroddia/2*2,frameroddia*0.75+frameroddia/2*2,frameroddia*1.25+frameroddia/2*2], center=true);
				translate([-frameroddia*1.5-frameroddia/2,-frameroddia/2-frameroddia/2/2,0])cube([frameroddia*3+frameroddia/2*2,frameroddia+frameroddia/2,frameroddia/2+frameroddia/2]);
				translate([0,0,(frameroddia*2 + frameroddia/2*2)/2])rotate([0,0,45])cube([frameroddia*3,frameroddia+frameroddia/2*2,frameroddia*2 + frameroddia/2*2], center=true);

			}


			translate([frameroddia,frameroddia,-1])cylinder(r=frameroddia/2, h=frameroddia*2 + frameroddia/2*2+2);
			translate([-frameroddia,-frameroddia,-1])cylinder(r=frameroddia/2, h=frameroddia*2 + frameroddia/2*2+2);
			translate([frameroddia*1.5+frameroddia/2+1,0,frameroddia/2+frameroddia/2])rotate([0,-90,0])cylinder(r=frameroddia/2, h=frameroddia*3+frameroddia/2*2+2);
			translate([0,0,frameroddia*1.5+frameroddia/2])rotate([0,-90,-60])cylinder(r=frameroddia/2, h=frameroddia*3+frameroddia/2*2+2,center=true);

		}

	}

}


translate([frameroddia*2+1,frameroddia*2.2+1,0])rightvertex(); 
translate([-frameroddia*2-1,-frameroddia*2.2-1,0])rightvertex();
translate([-frameroddia*2-1,frameroddia*2.2+1,0])leftvertex();
translate([frameroddia*2+1,-frameroddia*2.2-1,0])leftvertex();
