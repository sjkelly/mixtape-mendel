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

union(){

	difference(){
		
		union(){

			//make the bushing outer bits
			translate([bushingod/2,bushingod/2,0])cylinder(r=bushingod/2, h = bushingheight);
			cube([bushingod,bushingod/2,bushingheight]);	

		}

		//subtract the smooth rod diameter
		translate([bushingod/2,bushingod/2,-1])cylinder(r=smoothroddia/1.75, h = bushingheight+2);

	}
	
}