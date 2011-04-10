include <config.scad>;
$fn = 31;

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

	//motor construction
		translate([bushingod/2+nutwall,bushingod/2+nutwall*2+nutdia,smoothroddia+nutwall*sin(45)+xrodspacing/2-nemasize*2.54*5*sin(45)])rotate([0,-90,0]){
		translate([nemasize*2.54*sin(45)*10,nemasize*2.54*sin(45)*10,0])cylinder(r=motorscrew/2*motorwallmulti, h=partthick);
		translate([0,nemasize*2.54*sin(45)*10,0])cylinder(r=motorscrew/2*motorwallmulti, h=partthick);
		translate([nemasize*2.54*sin(45)*10,0,0])cylinder(r=motorscrew/2*motorwallmulti, h=partthick);
		translate([0,0,0])cylinder(r=motorscrew/2*motorwallmulti, h=partthick);
		translate([nemasize*2.54*sin(45)*5,nemasize*2.54*sin(45)*5,0])cylinder(r=motorcenter/2*centerwallmulti, h=partthick); //motorcenter
		translate([-motorscrew/2*motorwallmulti*sin(45),motorscrew/2*motorwallmulti*sin(45),0])rotate([0,0,-45])cube([motorscrew*motorwallmulti,nemasize*2.54*10,partthick]);
		translate([nemasize*2.54*sin(45)*10-(motorscrew/2*motorwallmulti*sin(45)),-motorscrew/2*motorwallmulti*sin(45),0])rotate([0,0,45])translate([-(smoothroddia+xrodspacing/2-nemasize*2.54*5*sin(45))/sin(45),0,0])cube([motorscrew*motorwallmulti+(smoothroddia+xrodspacing/2-nemasize*2.54*5*sin(45))/sin(45),nemasize*2.54*10,partthick]);
		translate([nemasize*2.54*sin(45)*10-(motorscrew/2*motorwallmulti*sin(45)),-motorscrew/2*motorwallmulti*sin(45),0])rotate([0,0,45])translate([-(smoothroddia+xrodspacing/2-nemasize*2.54*5*sin(45))/sin(45)+motorscrew/2*motorwallmulti,motorscrew/2*wallmulti,0])cube([(smoothroddia+xrodspacing/2-nemasize*2.54*5*sin(45))/sin(45),nemasize*2.54*10,partthick]);
		rotate([0,90,0])translate([-1,(nemasize*2.54*5*sin(45))-partthick/2,-smoothroddia/sin(45)-nutwall*2/sin(45)-motorscrew/2])cube([partthick+1,partthick,nemasize*10*2.54]);
		rotate([0,90,0])translate([0,(nemasize*2.54*5*sin(45))+partthick/2,-smoothroddia/sin(45)-nutwall*2/sin(45)-motorscrew/2])rotate([0,0,180])cube([partthick,bushingod/2+nutwall*2+nutdia+nemasize*2.54*sin(45)*5,nemasize*10*2.54]);
		rotate([0,90,0])translate([partthick/2,nemasize*2.54*5*sin(45),nemasize*2.54*5*sin(45)])rotate([0,45,180])cube([partthick/sin(45)*0.5,bushingod/2+nutwall*2+nutdia+nemasize*2.54*sin(45)*5,partthick/sin(45)*0.5]);
			}


	}
	//cleanup cause my math sucks
	translate([-50,-50,-1])cube([100,100,1.6]);

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

	//leadscrew
	translate([0,bushingod/2+nutdia/2+nutwall,0])rotate([0,0,30])cylinder(r=nutdia/2, h=nutheight, $fn=6);
	translate([0,bushingod/2+nutdia/2+nutwall,nutheight])rotate([0,0,30])cylinder(r=tapsize/2, h=nutheight);
	//motor screws
		translate([bushingod/2+nutwall,bushingod/2+nutwall*2+nutdia,smoothroddia+nutwall*sin(45)+xrodspacing/2-nemasize*2.54*5*sin(45)])rotate([0,-90,0]){
		translate([nemasize*2.54*sin(45)*10,nemasize*2.54*sin(45)*10,-1])cylinder(r=motorscrew/2, h=partthick+2);
		translate([0,nemasize*2.54*sin(45)*10,-1])cylinder(r=motorscrew/2, h=partthick+2);
		translate([nemasize*2.54*sin(45)*10,0,-1])cylinder(r=motorscrew/2, h=partthick+2);
		translate([0,0,-1])cylinder(r=motorscrew/2, h=partthick+2);
		translate([nemasize*2.54*sin(45)*5,nemasize*2.54*sin(45)*5,-1-partthick])cylinder(r=motorcenter/2, h=partthick*2+2); //motorcenter
			}
		
}
