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
$fn = 30;

	difference(){

		union(){

			cylinder(r = secscrewdia, h = secnutheight);
			translate([secscrewdia*2 + beltwidth,0,0])cylinder(r = secscrewdia, h = secnutheight);
			translate([0,-secscrewdia,0])cube([beltwidth+secscrewdia*2,secscrewdia*2,secnutheight]);

		}

		translate([0,0,-1])cylinder(r = secscrewdia/2, h = secnutheight + 2);
		translate([secscrewdia*2 + beltwidth,0,-1])cylinder(r = secscrewdia/2, h = secnutheight + 2);

	}
