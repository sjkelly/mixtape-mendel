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

bushingod = 16;
bushingheight = 11;
holedia = 4;
wall = 3;

$fn = 30;

difference(){
	union(){
		translate([0,0,0])cylinder(r=bushingod/2+wall, h=bushingheight);
		translate([-bushingod/2-wall,0,0])cube([bushingod+wall*2,bushingod/2+wall,bushingheight]);
		translate([-(bushingod+wall*2+holedia*6)/2,bushingod/2,0])cube([bushingod+wall*2+holedia*6,wall,bushingheight/2]);
		translate([-(bushingod+wall+holedia*4)/2,bushingod/2,0])cube([bushingod+wall*2+holedia*3.25,wall,bushingheight]);
		translate([-(bushingod+wall+holedia*4)/2,bushingod/2,bushingheight/2])rotate([-90,0,0])cylinder(r=bushingheight/2, h=wall);
		translate([(bushingod+wall+holedia*4)/2,bushingod/2,bushingheight/2])rotate([-90,0,0])cylinder(r=bushingheight/2, h=wall);



	}
	translate([-(bushingod+wall+holedia*4)/2,bushingod/2-1,bushingheight/2])rotate([-90,0,0])cylinder(r=holedia/2, h=wall+2);
	translate([(bushingod+wall+holedia*4)/2,bushingod/2-1,bushingheight/2])rotate([-90,0,0])cylinder(r=holedia/2, h=wall+2);
	translate([0,0,0])cylinder(r=bushingod/2, h=bushingheight);
	translate([-bushingod/2,0,0])cube([bushingod,bushingod/2,bushingheight]);
	translate([-bushingod/2-wall,-bushingod/4*3,0])cube([bushingod+wall*2,bushingod/4+wall,bushingheight]);
}
