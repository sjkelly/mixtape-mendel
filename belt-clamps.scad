beltwidth = 10;
holedia = 4;
holewall = 3;
partthick = 4;
$fn = 30;

difference(){
union(){
translate([holedia/2+holewall,holedia/2+holewall,0])cylinder(r = holedia/2+holewall, h = partthick);
translate([holedia*1.5+holewall+beltwidth,holedia/2+holewall,0])cylinder(r = holedia/2+holewall, h = partthick);
translate([holedia/2+holewall,0,0])cube([beltwidth+holedia,holedia+holewall*2,partthick]);
}
translate([holedia/2+holewall,holedia/2+holewall,0])cylinder(r = holedia/2, h = partthick);
translate([holedia*1.5+holewall+beltwidth,holedia/2+holewall,0])cylinder(r = holedia/2, h = partthick);
}