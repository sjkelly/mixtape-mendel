include <config.scad>;
$fn = 30;

difference(){
union(){
translate([clampholedia/2+clampholewall,clampholedia/2+clampholewall,0])cylinder(r = clampholedia/2+clampholewall, h = clampthick);
translate([clampholedia*1.5+clampholewall+beltwidth,clampholedia/2+clampholewall,0])cylinder(r = clampholedia/2+clampholewall, h = clampthick);
translate([clampholedia/2+clampholewall,0,0])cube([beltwidth+clampholedia,clampholedia+clampholewall*2,clampthick]);
}
translate([clampholedia/2+clampholewall,clampholedia/2+clampholewall,0])cylinder(r = clampholedia/2, h = clampthick);
translate([clampholedia*1.5+clampholewall+beltwidth,clampholedia/2+clampholewall,0])cylinder(r = clampholedia/2, h = clampthick);
}
