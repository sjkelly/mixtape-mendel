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