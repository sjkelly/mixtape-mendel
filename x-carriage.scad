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

			//Back wall
			cube([motorbody,motorbody + bushingod*3+zipheight*2, frameroddia/2]);
		
			//bushing clamps
			translate([0,bushingod/2+bushingod/4,bushingod/2+frameroddia/2])rotate([0,90,0])cylinder(r = bushingod/2+bushingod/4, h = motorbody);
			translate([0,bushingod*2+bushingod/4+motorbody+zipheight*2,bushingod/2+frameroddia/2])rotate([0,90,0])cylinder(r = bushingod/2+bushingod/4, h = motorbody);
			cube([motorbody,bushingod*1.5,bushingod/2+frameroddia/2]);
			translate([0,motorbody+bushingod*1.5+zipheight*2,0])cube([motorbody,bushingod*1.5,bushingod/2+frameroddia/2]);
		}
		//bushingcavity
		translate([-1,bushingod/2+bushingod/4,bushingod/2+frameroddia/2])rotate([0,90,0])cylinder(r = bushingod/2, h = motorbody+2);
		translate([-1,bushingod*2+bushingod/4+motorbody+zipheight*2,bushingod/2+frameroddia/2])rotate([0,90,0])cylinder(r = bushingod/2, h = motorbody+2);
		translate([-1,motorbody+bushingod*1.75+zipheight*2,frameroddia/2])cube([motorbody+2,bushingod,bushingod/2]);
		translate([-1,bushingod/4,frameroddia/2])cube([motorbody+2,bushingod,bushingod/2]);
		translate([-1,motorbody+zipheight*2+bushingod*1.5,bushingod*0.75+frameroddia/2])cube([motorbody+2,bushingod*1.5,bushingod/2]);
		translate([-1,0,bushingod*0.75+frameroddia/2])cube([motorbody+2,bushingod*1.5,bushingod/2]);
		
		//ziptie holes
		translate([motorbody/2-zipwidth/2,bushingod*1.5,-1])cube([zipwidth,zipheight,frameroddia/2+2]);
		translate([motorbody/2-zipwidth/2,bushingod*1.5+motorbody+zipheight,-1])cube([zipwidth,zipheight,frameroddia/2+2]);
		
		//motor holes
		translate([motorbody/2,bushingod*1.5+motorbody/2+zipheight,-1])cylinder(r=motorcenter/2, h = frameroddia/2+2);
		translate([motorbody/2-(nemasize*2.54*5*sin(45)),bushingod*1.5+motorbody/2+zipheight-(nemasize*2.54*5*sin(45)),-1])cylinder(r = secscrewdia/2, h = frameroddia+2);
		translate([motorbody/2-(nemasize*2.54*5*sin(45)),bushingod*1.5+motorbody/2+zipheight+(nemasize*2.54*5*sin(45)),-1])cylinder(r = secscrewdia/2, h = frameroddia+2);
		translate([motorbody/2+(nemasize*2.54*5*sin(45)),bushingod*1.5+motorbody/2+zipheight-(nemasize*2.54*5*sin(45)),-1])cylinder(r = secscrewdia/2, h = frameroddia+2);
		translate([motorbody/2+(nemasize*2.54*5*sin(45)),bushingod*1.5+motorbody/2+zipheight+(nemasize*2.54*5*sin(45)),-1])cylinder(r = secscrewdia/2, h = frameroddia+2);
	}
