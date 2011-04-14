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

difference(){
union(){
translate([-adapterholedia/2-tool1dia/2-penwall/2,platformextension/2-tool1dia/2-penwall,0])cube([tool1dia+penwall*2,tool1dia+penwall*2,shaftheight]);
translate([0,platformextension/6,0])cylinder(r=adapterholedia/2 + penwall,h=platformthick);
translate([0,platformextension*0.833,0])cylinder(r=adapterholedia/2 + penwall,h=platformthick);
translate([-adapterholedia/2-penwall,platformextension/6,0])cube([adapterholedia+penwall*2,platformextension*0.66,platformthick]);

}
translate([-adapterholedia/2-tool1dia/2-penwall/2,platformextension/2-tool1dia/2-penwall,shaftheight/4])rotate([0,-90,-135])cylinder(r=holdingscrewdia/2, h = tool1dia);
translate([-adapterholedia/2-tool1dia/2-penwall/2,platformextension/2-tool1dia/2-penwall,shaftheight])rotate([0,-90,-135])cylinder(r=holdingscrewdia/2, h = tool1dia);
translate([-adapterholedia/2-tool1dia/2+penwall/2,platformextension/2-tool1dia/2,0])cube([tool1dia,tool1dia,shaftheight]);
translate([0,platformextension/6,-1])cylinder(r=adapterholedia/2,h=platformthick+2);
translate([0,platformextension*0.833,-1])cylinder(r=adapterholedia/2,h=platformthick+2);
}
