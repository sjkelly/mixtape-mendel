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
$fn = 31;

difference(){
union(){

		//motor construction
		translate([0,nemasize*2.54*sin(45)*10,0])cylinder(r=secscrewdia/2+motortabwall, h=extruderthick);
		translate([0,0,0])cylinder(r=secscrewdia/2+motortabwall, h=extruderthick);
		translate([nemasize*2.54*sin(45)*5,nemasize*2.54*sin(45)*5,0])cylinder(r=motorcenter/2+motorcenterwall, h=extruderthick); //motorcenter
		translate([-(secscrewdia/2+motortabwall)*sin(45),(secscrewdia/2+motortabwall)*sin(45),0])rotate([0,0,-45])cube([secscrewdia+motortabwall*2,nemasize*2.54*5,extruderthick]);
		translate([nemasize*2.54*sin(45)*10-((secscrewdia/2+motortabwall)*sin(45)),-(secscrewdia/2+motortabwall)*sin(45),0])rotate([0,0,45])translate([0,nemasize*2.54*5,0])cube([secscrewdia+motortabwall*2,nemasize*2.54*5,extruderthick]);
		

		intersection(){
			union(){
			translate([-secscrewdia,nemasize*2.54*sin(45)*5,extruderthick+secscrewdia/2])rotate([0,90,0])cylinder(r=secscrewdia/2+idlerwall, h=nemasize*2.54*sin(45)*5); //idler hole
			translate([-secscrewdia,nemasize*2.54*sin(45)*5-idlerwall-secscrewdia/2,extruderthick-idlerwall])cube([nemasize*2.54*sin(45)*5,secscrewdia+idlerwall*2,secscrewdia/2+idlerwall]);
			translate([nemasize*2.54*sin(45)*5-pinchwheeldia/2,-secscrewdia,extruderthick+bowdencabledia/2])rotate([-90,0,0])cylinder(r=bowdencabledia/2+bowdenwall, h=nemasize*2.54*sin(45)*10+secscrewdia*2);
			translate([nemasize*2.54*sin(45)*5-pinchwheeldia/2-bowdencabledia/2-bowdenwall,-secscrewdia,extruderthick-bowdenwall])cube([bowdencabledia+bowdenwall*2,nemasize*2.54*sin(45)*10+secscrewdia*2,bowdencabledia/2+bowdenwall]);

			}
				difference(){
					translate([nemasize*2.54*sin(45)*5,nemasize*2.54*sin(45)*5,0])cylinder(r=motorcenter/2+motorcenterwall, h=extruderthick+bowdencabledia+bowdenwall); //motorcenter
					translate([nemasize*2.54*sin(45)*5,nemasize*2.54*sin(45)*5,0])cylinder(r=motorcenter/2, h=extruderthick+bowdencabledia+bowdenwall); //motorcenter
				}	
		}
	
	
}

	
		//motor screws
		translate([0,nemasize*2.54*sin(45)*10,0])cylinder(r=secscrewdia/2, h=extruderthick);
		translate([0,0,0])cylinder(r=secscrewdia/2, h=extruderthick);
		translate([nemasize*2.54*sin(45)*5,nemasize*2.54*sin(45)*5,0])cylinder(r=motorcenter/2, h=extruderthick); //motorcenter

		translate([-secscrewdia,nemasize*2.54*sin(45)*5,extruderthick+secscrewdia/2])rotate([0,90,0])cylinder(r=secscrewtap/2, h=nemasize*2.54*sin(45)*5); //idler hole
		translate([nemasize*2.54*sin(45)*5-pinchwheeldia/2,-secscrewdia,extruderthick+bowdencabledia/2])rotate([-90,0,0])cylinder(r=bowdencabledia/2, h=nemasize*2.54*sin(45)*10+secscrewdia*2);

		translate([nemasize*2.54*sin(45)*5-pinchwheeldia/2+bowdencabledia/2+bowdenwall,-secscrewdia,-1])cube([nemasize*2.54*sin(45)*10,nemasize*2.54*sin(45)*10+secscrewdia*2,extruderthick+2]);
}
