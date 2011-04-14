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

pieceheight = 34;
bottomdia = 5;
topdia = 7;
wall = 4;
setscrewdia=3;
$fn =60;

difference(){
	union(){
	cylinder(r=bottomdia/2+wall, h= pieceheight/2);
	translate([0,0,pieceheight/2])cylinder(r=topdia/2+wall, h= pieceheight/2);
	translate([0,0,pieceheight/3])cylinder(r2=topdia/2+wall, r1=bottomdia/2+wall, h= pieceheight/6);
	}
cylinder(r=bottomdia/2, h= pieceheight/2);
translate([0,0,pieceheight/2])cylinder(r=topdia/2, h= pieceheight/2);
translate([0,0,pieceheight/4])rotate([90,0,0])cylinder(r=setscrewdia/2, h= pieceheight/2);
translate([0,0,pieceheight*0.75])rotate([90,0,0])cylinder(r=setscrewdia/2, h= pieceheight/2);
}
