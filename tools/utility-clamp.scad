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

include <../config.scad>;

$fn = 60;

difference() {
	union() {
	cylinder(r = smoothroddia/2+utilityclampwall, h=secscrewdia+utilityclampwall*2);
	translate([smoothroddia/2+secscrewdia/2,smoothroddia/2+utilityclampwall,secscrewdia/2+utilityclampwall])rotate([90,0,0])cylinder(r = secscrewdia/2+utilityclampwall, h=smoothroddia+utilityclampwall*2);
	translate([0,-smoothroddia/2-utilityclampwall,0])cube([secscrewdia+smoothroddia/2+utilityclampwall/2, smoothroddia+ utilityclampwall*2, secscrewdia/2 + utilityclampwall]);
	translate([0,-smoothroddia/2-utilityclampwall,0])cube([secscrewdia/2+smoothroddia/2, smoothroddia+ utilityclampwall*2, secscrewdia + utilityclampwall*2]);		
	}
translate([0,0,-1])cylinder(r = smoothroddia/2, h=secscrewdia+utilityclampwall*2+2);	
translate([smoothroddia/2+secscrewdia/2,smoothroddia/2+utilityclampwall+1,secscrewdia/2+utilityclampwall])rotate([90,0,0])cylinder(r = secscrewdia/2, h=smoothroddia+utilityclampwall*2+2);
translate([0,-smoothroddia/2,-1])cube([secscrewdia+smoothroddia/2+utilityclampwall, smoothroddia, secscrewdia + utilityclampwall*2+2]);
}
