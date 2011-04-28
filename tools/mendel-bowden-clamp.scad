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

include <../config.scad>;
$fn = 60;

difference(){
union(){
translate([0,mountspacing/2,0])cylinder(r=bowdencabledia/2+bowdenwall, h = grooveheight+secscrewdia+bowdenwall*2);
translate([0,0,0])cylinder(r=secscrewdia/2 + penwall,h=grooveheight);
translate([0,mountspacing,0])cylinder(r=secscrewdia/2 + penwall,h=grooveheight);
translate([-secscrewdia/2-penwall,0,0])cube([secscrewdia+penwall*2,mountspacing,grooveheight]);

}
translate([0,mountspacing/2,0])cylinder(r=bowdencabledia/2, h =  grooveheight+secscrewdia+bowdenwall*2);
translate([0,mountspacing/2,grooveheight+secscrewdia/2+bowdenwall])rotate([0,90,0])cylinder(r=secscrewtap/2, h = bowdenwall+bowdencabledia);
translate([0,0,-1])cylinder(r=secscrewdia/2,h=platformthick+2);
translate([0,mountspacing,-1])cylinder(r=secscrewdia/2,h=platformthick+2);
}
