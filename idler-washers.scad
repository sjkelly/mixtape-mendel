include <config.scad>;
$fn = 30;

difference(){
union(){
cylinder(r=bearingod/2 + beltthick, h=layerheight*2);
cylinder(r=bearinginnerrace/2, h=layerheight*4);
}
translate([0,0,-1])cylinder(r=bearingid/2, h=layerheight*4+2);
}
