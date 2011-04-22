/*  Mixtape Mendel - A Fully Parametric RepRap
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
$fn = 30;
difference(){
union(){
translate([0,platformextension/6,0])cylinder(r=adapterholedia/2 + penwall,h=grooveheight);
translate([0,platformextension*0.833,0])cylinder(r=adapterholedia/2 + penwall,h=grooveheight);
translate([-adapterholedia/2-penwall,platformextension/6,0])cube([adapterholedia+penwall*2,platformextension*0.66,grooveheight]);
translate([0,platformextension/2,0])cylinder(r = carriagewidth/4, h = grooveheight);
}
translate([-carriagewidth/4,platformextension/2-groovedia/2,-1])cube([carriagewidth/4,groovedia,grooveheight+2]);
translate([0,platformextension/2,-1])cylinder(r = groovedia/2, h = grooveheight+2);
translate([0,platformextension/6,-1])cylinder(r=adapterholedia/2,h=grooveheight+2);
translate([0,platformextension*0.833,-1])cylinder(r=adapterholedia/2,h=grooveheight+2);
}
