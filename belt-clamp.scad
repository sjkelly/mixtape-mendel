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

			translate([clampholedia/2+clampholewall,clampholedia/2+clampholewall,0])cylinder(r = clampholedia/2+clampholewall, h = clampthick);
			translate([clampholedia*1.5+clampholewall+beltwidth,clampholedia/2+clampholewall,0])cylinder(r = clampholedia/2+clampholewall, h = clampthick);
			translate([clampholedia/2+clampholewall,0,0])cube([beltwidth+clampholedia,clampholedia+clampholewall*2,clampthick]);

		}

		translate([clampholedia/2+clampholewall,clampholedia/2+clampholewall,0])cylinder(r = clampholedia/2, h = clampthick);
		translate([clampholedia*1.5+clampholewall+beltwidth,clampholedia/2+clampholewall,0])cylinder(r = clampholedia/2, h = clampthick);

	}
