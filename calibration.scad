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

			cube([(secnutapothem+nutapothem)/cos(30)+6, secnutapothem+4 , nutapothem/cos(30)+4]);   

		}
		//horizontal secondary	
		translate([(secnutapothem/2)/cos(30)+2,-1,(nutapothem/cos(30)+4)/2])rotate([-90,0,0])cylinder(r = secscrewdia/2, h = secnutapothem+6);
		translate([(secnutapothem/2)/cos(30)+2,-1,(nutapothem/cos(30)+4)/2])rotate([-90,0,0])cylinder(r = (secnutapothem/cos(30))/2, h = secnutheight+1, $fn=6);

		//verticle secondary
		translate([(secnutapothem/2)/cos(30)+2,(secnutapothem+4 )/2,-1])rotate([0,0,0])cylinder(r = secscrewdia/2, h =  nutapothem/cos(30)+6);
		translate([(secnutapothem/2)/cos(30)+2,(secnutapothem+4 )/2,nutapothem/cos(30)+4-secnutheight])cylinder(r = (secnutapothem/cos(30))/2, h = secnutheight+1, $fn=6);

		//horizontal primary	
		translate([(secnutapothem)/cos(30)+4+(nutapothem/cos(30))/2,-1,(nutapothem/cos(30)+4)/2])rotate([-90,0,0])cylinder(r = frameroddia/2, h = secnutapothem+6);
		translate([(secnutapothem)/cos(30)+4+(nutapothem/cos(30))/2,-1,(nutapothem/cos(30)+4)/2])rotate([-90,0,0])cylinder(r = (nutapothem/cos(30))/2, h = nutheight+1, $fn=6);

	}


