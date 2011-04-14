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

$fn =60;

difference(){
	union(){
	cylinder(r=motorshaftdia/2+couplerwall, h= couplerheight/2);
	translate([0,0,couplerheight/2])cylinder(r=tapsize/2+couplerwall, h= couplerheight/2);
	translate([0,0,couplerheight/3])cylinder(r2=tapsize/2+couplerwall, r1=motorshaftdia/2+couplerwall, h= couplerheight/6);
	}
cylinder(r=motorshaftdia/2, h= couplerheight/2);
translate([0,0,couplerheight/2])cylinder(r=tapsize/2, h= couplerheight/2);
translate([0,0,couplerheight/4])rotate([90,0,0])cylinder(r=setscrewdia/2, h= couplerheight/2);
translate([0,0,couplerheight*0.75])rotate([90,0,0])cylinder(r=setscrewdia/2, h= couplerheight/2);
}
