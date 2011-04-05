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