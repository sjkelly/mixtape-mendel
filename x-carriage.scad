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
	cube([xrodspacing+bushingod+bushingwall*2,backwall,carriagewidth]);
	translate([bushingod/2+bushingwall,bushingod/2+backwall,0])cylinder(r=bushingod/2+bushingwall, h=carriagewidth);
	translate([bushingod/2+bushingwall+xrodspacing,bushingod/2+backwall,0])cylinder(r=bushingod/2+bushingwall, h=carriagewidth);
	translate([0,backwall,0])cube([bushingod+bushingwall*2,bushingod/2,carriagewidth]);
	translate([xrodspacing,backwall,0])cube([bushingod+bushingwall*2,bushingod/2,carriagewidth]);
	translate([0,-platformextension,0])cube([platformthick,platformextension,carriagewidth]);
	translate([(xrodspacing+bushingod+bushingwall*2)/2-clampthick-beltthick/2-pulleydia/2,backwall,0])cube([beltthick+clampthick*2,bushingod+bushingwall,carriagewidth/2]);
	}
translate([bushingod/2+bushingwall,bushingod/2+backwall,0])cylinder(r=bushingod/2, h=carriagewidth);
translate([bushingod/2+bushingwall+xrodspacing,bushingod/2+backwall,0])cylinder(r=bushingod/2, h=carriagewidth);
translate([bushingwall,backwall,0])cube([bushingod,bushingod/2,carriagewidth]);
translate([xrodspacing+bushingwall,backwall,0])cube([bushingod,bushingod/2,carriagewidth]);
translate([bushingod/2+bushingwall-towergap/2,backwall,0])cube([towergap,bushingod*2,carriagewidth]);
translate([bushingod/2+bushingwall-towergap/2+xrodspacing,backwall,0])cube([towergap,bushingod*2,carriagewidth]);
translate([(xrodspacing+bushingod+bushingwall*2)/2,-1,carriagewidth/2])rotate([-90,0,0])cylinder(r=xrodspacing/2-bushingod/2-bushingwall,h=backwall+bushingod+bushingwall+2);
translate([-1,-platformextension/2,carriagewidth/4])rotate([0,90,0])cylinder(r=tool1dia/2,h=platformthick+2);
translate([-1,-platformextension/2,carriagewidth*0.75])rotate([0,90,0])cylinder(r=tool1dia/2,h=platformthick+2);
translate([-1,-platformextension/2,carriagewidth/2])rotate([0,90,0])cylinder(r=adapterholedia/2,h=platformthick+2);
translate([-1,-platformextension/6,carriagewidth/2])rotate([0,90,0])cylinder(r=adapterholedia/2,h=platformthick+2);
translate([-1,-platformextension*0.833,carriagewidth/2])rotate([0,90,0])cylinder(r=adapterholedia/2,h=platformthick+2);
translate([-1,-platformextension/6,carriagewidth/4])rotate([0,90,0])cylinder(r=adapterholedia/2,h=platformthick+2);
translate([-1,-platformextension*0.833,carriagewidth/4])rotate([0,90,0])cylinder(r=adapterholedia/2,h=platformthick+2);
translate([-1,-platformextension/6,carriagewidth*0.75])rotate([0,90,0])cylinder(r=adapterholedia/2,h=platformthick+2);
translate([-1,-platformextension*0.833,carriagewidth*0.75])rotate([0,90,0])cylinder(r=adapterholedia/2,h=platformthick+2);
translate([-1,backwall+bushingod/2,carriagewidth/2])rotate([0,90,0])cylinder(r=adapterholedia/2,h=platformthick+2);
translate([-1,backwall+bushingod/2,carriagewidth/4])rotate([0,90,0])cylinder(r=adapterholedia/2,h=platformthick+2);
translate([-1,backwall+bushingod/2,carriagewidth*0.75])rotate([0,90,0])cylinder(r=adapterholedia/2,h=platformthick+2);
translate([(xrodspacing+bushingod+bushingwall*2)/2-beltthick/2-pulleydia/2,backwall,0])cube([beltthick,bushingod+bushingwall,carriagewidth/2]);
translate([(xrodspacing+bushingod+bushingwall*2)/2-beltthick/2+1,backwall+bushingod-clampholedia/2,clampholedia*2])rotate([0,-90,0])cylinder(r=clampholedia/2,h=beltthick+clampthick*2+2);
}
