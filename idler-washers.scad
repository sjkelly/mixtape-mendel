$fn = 30;
layerheight = 0.32;
difference(){
union(){
cylinder(r=13.5, h=layerheight*2);
cylinder(r=6, h=layerheight*4);
}
translate([0,0,-1])cylinder(r=4, h=layerheight*4+2);
}