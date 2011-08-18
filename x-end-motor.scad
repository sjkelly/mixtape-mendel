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
	
			difference(){
		
				union(){
				
					//x-rod assembly
					translate([0,smoothroddia*0.75,smoothroddia*0.75])rotate([0,90,0])cylinder(r = smoothroddia*0.75, h = motorbody);
					translate([0,smoothroddia*0.75+motorbody+zipheight*2,smoothroddia*0.75])rotate([0,90,0])cylinder(r = smoothroddia*0.75, h = motorbody);
					translate([motorbody/2,smoothroddia*0.75+motorbody+zipheight*2,smoothroddia*0.75+smoothroddia*0.75*sin(45)])rotate([45,0,0])cube([motorbody,(smoothroddia*0.75*sin(45))/sin(45),(smoothroddia*0.75*sin(45))/sin(45)], center = true);
					translate([motorbody/2,smoothroddia*0.75,smoothroddia*0.75+smoothroddia*0.75*sin(45)])rotate([45,0,0])cube([motorbody,(smoothroddia*0.75*sin(45))/sin(45),(smoothroddia*0.75*sin(45))/sin(45)], center = true);
					translate([0,smoothroddia*0.5,smoothroddia*0.75+smoothroddia*0.05/sin(45)+smoothroddia/2])cube([motorbody,smoothroddia*0.5,smoothroddia*0.20]);
		
					//z smooth rod
					translate([0,smoothroddia*0.75,0])cube([bushingod*1.5,motorbody+zipheight*2,smoothroddia]);
					
					//press fit
					translate([motorbody/8, smoothroddia*0.75-smoothroddia/8, 0])cube([motorbody*0.75, smoothroddia/4, smoothroddia/2]);
				
				}
				
				//x-rod holes/teardrops
				translate([-1,smoothroddia*0.75,smoothroddia*0.75])rotate([0,90,0])cylinder(r = smoothroddia*0.55, h = motorbody+2);
				translate([-1,smoothroddia*0.75+motorbody+zipheight*2,smoothroddia*0.75])rotate([0,90,0])cylinder(r = smoothroddia*0.55, h = motorbody+2);
				translate([motorbody/2,smoothroddia*0.75+motorbody+zipheight*2,smoothroddia*0.75+smoothroddia*0.55*sin(45)])rotate([45,0,0])cube([motorbody+2,(smoothroddia*sin(45)*0.55)/sin(45),(smoothroddia*sin(45)*0.55)/sin(45)], center = true);
				translate([motorbody/2,smoothroddia*0.75,smoothroddia*0.75+smoothroddia*0.55*sin(45)])rotate([45,0,0])cube([motorbody+2,(smoothroddia*sin(45)*0.55)/sin(45),(smoothroddia*sin(45)*0.55)/sin(45)], center = true);
				translate([-1,smoothroddia*0.25,smoothroddia*0.95+smoothroddia*0.05/sin(45)+smoothroddia/2])cube([motorbody+2,smoothroddia,smoothroddia*0.50]);
		
		
				
		
			}
				
			//make the truncated teardrops work
			translate([0,smoothroddia*0.5,smoothroddia*0.75+smoothroddia*0.05/sin(45)+smoothroddia/2])cube([motorbody,smoothroddia*0.5,smoothroddia*0.20]);
				
			//press fit right
			translate([motorbody/8, smoothroddia*0.75-smoothroddia/8, 0])cube([motorbody*0.75, smoothroddia/4, smoothroddia/2]);	
			
		}

	
		//dummy xrod placement
		translate([-1,smoothroddia*0.75,smoothroddia*0.75+smoothroddia*0.05/sin(45)])rotate([0,90,0])cylinder(r = smoothroddia/2, h = motorbody+2);
		translate([-1,smoothroddia*0.75+motorbody+zipheight*2,smoothroddia*0.75])rotate([0,90,0])cylinder(r = smoothroddia/2, h = motorbody+2);		
		
		//pressfit tensioner cutout
		translate([motorbody/8-smoothroddia/8, smoothroddia*0.75-smoothroddia/4, -1])cube([motorbody*0.75+smoothroddia/4, smoothroddia/8, smoothroddia/2+1]);
		translate([motorbody/8-smoothroddia/8, smoothroddia*0.75-smoothroddia/4, -1])cube([smoothroddia/8, smoothroddia*0.60+smoothroddia/8, smoothroddia*0.75+1]);
		translate([motorbody/8+motorbody*0.75, smoothroddia*0.75-smoothroddia/4, -1])cube([smoothroddia/8, smoothroddia*0.60+smoothroddia/8, smoothroddia*0.75+1]);
	



	}
