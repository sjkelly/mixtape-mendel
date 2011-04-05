xrodspacing = 55; //rod spacing center to center
xroddia = 8; //rod diamter
nemasize = 1.7;
znutdia = 14.8;
znuth = 7; //znut height
zroddia = 8;
nutwall = 3; //wall thickness
zbeforetapdia = 7; 
bushingod = 16;
bushingtower =xroddia+nutwall*sin(45)+xrodspacing ;
towergap= 10;
idlerthick = 4.5;
idlerwidth = 4.5;
idlergap = 8;
$fn = 30;
mirror(){
difference(){
	union(){

	//bushingtower
	translate([0,0,0])cylinder(r=bushingod/2+nutwall, h=bushingtower);
	translate([-bushingod/2-nutwall,0,0])cube([bushingod+nutwall*2,bushingod/2+nutwall,bushingtower]);

	//x rods
	translate([bushingod/2,-bushingod/2-nutwall,xroddia+nutwall*sin(45)])rotate([0,45,0])cube([xroddia+nutwall*2,bushingod+nutwall*2+znutdia,xroddia+nutwall*2]);
	translate([towergap/2,-bushingod/2-nutwall,0])cube([bushingod/2+nutwall/sin(45)+xroddia*sin(45)-towergap/2,bushingod+nutwall*2+znutdia,(xroddia+nutwall*2)*2*sin(45)]);
	translate([bushingod/2,-bushingod/2,xroddia+nutwall*sin(45)+xrodspacing])rotate([0,45,0])translate([0,0,-(bushingod+nutwall)/sin(45)])cube([xroddia+nutwall*2,bushingod+nutwall,xroddia+nutwall*2+(bushingod+nutwall)/sin(45)]);

	//leadscrew
	translate([0,bushingod/2+znutdia/2+nutwall,znuth])rotate([0,0,30])cylinder(r1=znutdia/2+nutwall, r2=zbeforetapdia, h=znuth, $fn=6);
	translate([0,bushingod/2+zbeforetapdia/2,znuth])rotate([0,0,30])cylinder(r1=znutdia/2+nutwall, r2=zbeforetapdia, h=znuth, $fn=6);
	translate([0,bushingod/2+znutdia/2+nutwall,0])rotate([0,0,30])cylinder(r=znutdia/2+nutwall, h=znuth, $fn=6);
	translate([0,bushingod/2+nutwall,0])rotate([0,0,30])cylinder(r=znutdia/2+nutwall, h=znuth, $fn=6);
	
	//idler slides
	translate([nutwall+bushingod/2+xroddia/sin(45)+1,bushingod/2+nutwall+znutdia-idlerwidth,xroddia+nutwall*sin(45)])cube([idlerthick,idlerwidth,xrodspacing]);	
	translate([nutwall+bushingod/2+xroddia/sin(45)+1,bushingod/2+nutwall+znutdia-idlerwidth*2-idlergap,xroddia+nutwall*sin(45)])cube([idlerthick,idlerwidth,xrodspacing]);	
	translate([nutwall+bushingod/2+xroddia/sin(45)+1,bushingod/2+nutwall+znutdia-idlerwidth-idlergap/2,xroddia+nutwall*sin(45)+xrodspacing])rotate([0,90,0])cylinder(r=idlergap/2+idlerwidth,h=idlerthick);
	
	}
	
	//bushing holder
	translate([0,0,0])cylinder(r=bushingod/2, h=bushingtower);
	translate([-bushingod/2,0,0])cube([bushingod,bushingod/2,bushingtower]);
	translate([-towergap/2,-bushingod,0])cube([towergap,bushingod,bushingtower]);

	//XRODS
	translate([nutwall/sin(45)+bushingod/2,-bushingod/2-nutwall,xroddia+nutwall*sin(45)])rotate([0,45,0])cube([xroddia,bushingod+nutwall*2+znutdia,xroddia]);
	translate([nutwall/sin(45)+bushingod/2,-bushingod/2-nutwall,xroddia+nutwall*sin(45)+xrodspacing])rotate([0,45,0])cube([xroddia,bushingod+nutwall*2,xroddia]);
	
	//overflow clean up
	difference(){
		translate([-bushingod/2-nutwall,-bushingod/2-nutwall,0])cube([bushingod/2+nutwall,bushingod/2+nutwall,bushingtower]);
		cylinder(r=bushingod/2+nutwall,h=bushingtower);	
		}	

	//idler sides
	translate([nutwall+bushingod/2+xroddia/sin(45)+1,bushingod/2+nutwall+znutdia-idlerwidth-idlergap/2,xroddia+nutwall*sin(45)+xrodspacing])rotate([0,90,0])cylinder(r=idlergap/2,h=idlerthick);
	translate([nutwall+bushingod/2+xroddia/sin(45),bushingod/2+nutwall+znutdia-idlerwidth-idlergap,xroddia+nutwall*sin(45)+xrodspacing-idlergap-idlerwidth])cube([idlerthick+2,idlergap,idlergap+idlerwidth]);	
	
	//leadscrew
	translate([0,bushingod/2+znutdia/2+nutwall,0])rotate([0,0,30])cylinder(r=znutdia/2, h=znuth, $fn=6);
	translate([0,bushingod/2+znutdia/2+nutwall,znuth])rotate([0,0,30])cylinder(r=zbeforetapdia/2, h=znuth);
		
}
}