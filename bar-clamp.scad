/*
Copyright (C) 2011  Steve Kelly

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
*/

include <config.scad>;

$fn = 61;

module barclamp(){

	difference() {

		union() {

			cylinder(r = smoothroddia/2+frameroddia/2, h=frameroddia+frameroddia/2*2);
			translate([smoothroddia/2+frameroddia/2,smoothroddia/2+frameroddia/2,frameroddia/2+frameroddia/2])rotate([90,0,0])cylinder(r = frameroddia/2+frameroddia/2, h=smoothroddia+frameroddia/2*2);
			translate([0,-smoothroddia/2-frameroddia/2,0])cube([frameroddia+smoothroddia/2+frameroddia/2/2, smoothroddia+ frameroddia/2*2, frameroddia/2 + frameroddia/2]);
			translate([0,-smoothroddia/2-frameroddia/2,0])cube([frameroddia/2+smoothroddia/2, smoothroddia+ frameroddia/2*2, frameroddia + frameroddia/2*2]);		
		}

		translate([0,0,-1])cylinder(r = smoothroddia/2, h=frameroddia+frameroddia/2*2+2);	
		translate([smoothroddia/2+frameroddia/2,smoothroddia/2+frameroddia/2+1,frameroddia/2+frameroddia/2])rotate([90,0,0])cylinder(r = frameroddia/2, h=smoothroddia+frameroddia/2*2+2);
		translate([0,-smoothroddia/2,-1])cube([frameroddia+smoothroddia/2+frameroddia/2, smoothroddia, frameroddia + frameroddia/2*2+2]);

	}

}
barclamp();
