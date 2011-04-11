include <config.scad>;
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