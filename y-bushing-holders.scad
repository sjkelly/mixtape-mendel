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

//breakout vars (if any)

$fn = 30;
	
	union(){

		difference(){
	
			union(){
			
				//create main cylinder
				translate([bushingod*1.5/2,0,bushingod*1.5/2])rotate([-90,0,0])cylinder(r=bushingod*1.5/2, h = bushingheight+4);	//bushing wall is 1/4 diameter, with height allowing for 2mm tab on each side to hold bushing
				
				//square out the bottom wall
				cube([bushingod*1.5,bushingheight+4,bushingod*1.5/2]);
				
			 	//make some tabs yo
				cylinder(r = 
	
			}
			 //linear bearing hole
			translate([bushingod*1.5/2,-1,bushingod*1.5/2])rotate([-90,0,0])cylinder(r=bushingod/2, h = bushingheight+6);
	
			//cut out top of holder
			translate([0,-1,bushingod/4+bushingod*0.75])cube([bushingod*1.5,bushingheight+6,bushingod/2]);
		
			//square out linear cavity
			//cut out top of holder
			translate([bushingod/4,-1,bushingod/4])cube([bushingod,bushingheight+6,bushingod/2]);

			//ziptie slots
			
			
		}

		//Holder tabs
		cube([bushingod*1.5, 2,bushingod/4+bushingod/2-smoothroddia/2]);
		translate([0,bushingheight+2,0])cube([bushingod*1.5, 2,bushingod/4+bushingod/2-smoothroddia/2]);
	}
