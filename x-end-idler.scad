include <config.scad>;
$fn = 31;
mirror(){
difference(){
	union(){

	//Bushing Tower
	translate([0,0,0])cylinder(r=bushingod/2+nutwall, h=smoothroddia+nutwall*sin(45)+xrodspacing);
	translate([-bushingod/2-nutwall,0,0])cube([bushingod+nutwall*2,bushingod/2+nutwall,smoothroddia+nutwall*sin(45)+xrodspacing]);

	//x rods
	translate([bushingod/2,-bushingod/2-nutwall,smoothroddia+nutwall*sin(45)])rotate([0,45,0])cube([smoothroddia+nutwall*2,bushingod+nutwall*2+nutdia,smoothroddia+nutwall*2]);
	translate([towergap/2,-bushingod/2-nutwall,0])cube([bushingod/2+nutwall/sin(45)+smoothroddia*sin(45)-towergap/2,bushingod+nutwall*2+nutdia,(smoothroddia+nutwall*2)*2*sin(45)]);
	translate([bushingod/2,-bushingod/2,smoothroddia+nutwall*sin(45)+xrodspacing])rotate([0,45,0])translate([0,0,-(bushingod+nutwall)/sin(45)])cube([smoothroddia+nutwall*2,bushingod+nutwall,smoothroddia+nutwall*2+(bushingod+nutwall)/sin(45)]);

	//leadscrew
	translate([0,bushingod/2+nutdia/2+nutwall,nutheight])rotate([0,0,30])cylinder(r1=nutdia/2+nutwall, r2=tapsize, h=nutheight, $fn=6);
	translate([0,bushingod/2+tapsize/2,nutheight])rotate([0,0,30])cylinder(r1=nutdia/2+nutwall, r2=tapsize, h=nutheight, $fn=6);
	translate([0,bushingod/2+nutdia/2+nutwall,0])rotate([0,0,30])cylinder(r=nutdia/2+nutwall, h=nutheight, $fn=6);
	translate([0,bushingod/2+nutwall,0])rotate([0,0,30])cylinder(r=nutdia/2+nutwall, h=nutheight, $fn=6);
	
	//idler slides
	translate([nutwall+bushingod/2+smoothroddia/sin(45)+1,bushingod/2+nutwall+nutdia-idlerwidth,smoothroddia+nutwall*sin(45)])cube([idlerthick,idlerwidth,xrodspacing]);	
	translate([nutwall+bushingod/2+smoothroddia/sin(45)+1,bushingod/2+nutwall+nutdia-idlerwidth*2-idlergap,smoothroddia+nutwall*sin(45)])cube([idlerthick,idlerwidth,xrodspacing]);	
	translate([nutwall+bushingod/2+smoothroddia/sin(45)+1,bushingod/2+nutwall+nutdia-idlerwidth-idlergap/2,smoothroddia+nutwall*sin(45)+xrodspacing])rotate([0,90,0])cylinder(r=idlergap/2+idlerwidth,h=idlerthick);
	
	}
	
	//bushing holder
	translate([0,0,0])cylinder(r=bushingod/2, h=smoothroddia+nutwall*sin(45)+xrodspacing);
	translate([-bushingod/2,0,0])cube([bushingod,bushingod/2,smoothroddia+nutwall*sin(45)+xrodspacing]);
	translate([-towergap/2,-bushingod,0])cube([towergap,bushingod,smoothroddia+nutwall*sin(45)+xrodspacing]);

	//XRODS
	translate([nutwall/sin(45)+bushingod/2,-bushingod/2-nutwall,smoothroddia+nutwall*sin(45)])rotate([0,45,0])cube([smoothroddia,bushingod+nutwall*2+nutdia,smoothroddia]);
	translate([nutwall/sin(45)+bushingod/2,-bushingod/2-nutwall,smoothroddia+nutwall*sin(45)+xrodspacing])rotate([0,45,0])cube([smoothroddia,bushingod+nutwall*2,smoothroddia]);
	
	//overflow clean up
	difference(){
		translate([-bushingod/2-nutwall,-bushingod/2-nutwall,0])cube([bushingod/2+nutwall,bushingod/2+nutwall,smoothroddia+nutwall*sin(45)+xrodspacing]);
		cylinder(r=bushingod/2+nutwall,h=smoothroddia+nutwall*sin(45)+xrodspacing);	
		}	

	//idler sides
	translate([nutwall+bushingod/2+smoothroddia/sin(45)+1,bushingod/2+nutwall+nutdia-idlerwidth-idlergap/2,smoothroddia+nutwall*sin(45)+xrodspacing])rotate([0,90,0])cylinder(r=idlergap/2,h=idlerthick);
	translate([nutwall+bushingod/2+smoothroddia/sin(45),bushingod/2+nutwall+nutdia-idlerwidth-idlergap,smoothroddia+nutwall*sin(45)+xrodspacing-idlergap-idlerwidth])cube([idlerthick+2,idlergap,idlergap+idlerwidth]);	
	
	//leadscrew
	translate([0,bushingod/2+nutdia/2+nutwall,0])rotate([0,0,30])cylinder(r=nutdia/2, h=nutheight, $fn=6);
	translate([0,bushingod/2+nutdia/2+nutwall,nutheight])rotate([0,0,30])cylinder(r=tapsize/2, h=nutheight);
		
}
}
