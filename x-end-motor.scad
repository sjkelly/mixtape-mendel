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
wallmulti = 1.5;
motorwallmulti = 1.7;
motorscrew =4;
partthick = 6; //thickness of the motor mount
centerwallmulti = 1.5; // center motor hole multi
motorcenter = 24;
supportwidth = 17;
$fn = 31;

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

	//motor construction
		translate([bushingod/2+nutwall,bushingod/2+nutwall*2+znutdia,xroddia+nutwall*sin(45)+xrodspacing/2-nemasize*2.54*5*sin(45)])rotate([0,-90,0]){
		translate([nemasize*2.54*sin(45)*10,nemasize*2.54*sin(45)*10,0])cylinder(r=motorscrew/2*motorwallmulti, h=partthick);
		translate([0,nemasize*2.54*sin(45)*10,0])cylinder(r=motorscrew/2*motorwallmulti, h=partthick);
		translate([nemasize*2.54*sin(45)*10,0,0])cylinder(r=motorscrew/2*motorwallmulti, h=partthick);
		translate([0,0,0])cylinder(r=motorscrew/2*motorwallmulti, h=partthick);
		translate([nemasize*2.54*sin(45)*5,nemasize*2.54*sin(45)*5,0])cylinder(r=motorcenter/2*centerwallmulti, h=partthick); //motorcenter
		translate([-motorscrew/2*motorwallmulti*sin(45),motorscrew/2*motorwallmulti*sin(45),0])rotate([0,0,-45])cube([motorscrew*motorwallmulti,nemasize*2.54*10,partthick]);
		translate([nemasize*2.54*sin(45)*10-(motorscrew/2*motorwallmulti*sin(45)),-motorscrew/2*motorwallmulti*sin(45),0])rotate([0,0,45])translate([-(xroddia+xrodspacing/2-nemasize*2.54*5*sin(45))/sin(45),0,0])cube([motorscrew*motorwallmulti+(xroddia+xrodspacing/2-nemasize*2.54*5*sin(45))/sin(45),nemasize*2.54*10,partthick]);
		translate([nemasize*2.54*sin(45)*10-(motorscrew/2*motorwallmulti*sin(45)),-motorscrew/2*motorwallmulti*sin(45),0])rotate([0,0,45])translate([-(xroddia+xrodspacing/2-nemasize*2.54*5*sin(45))/sin(45)+motorscrew/2*motorwallmulti,motorscrew/2*wallmulti,0])cube([(xroddia+xrodspacing/2-nemasize*2.54*5*sin(45))/sin(45),nemasize*2.54*10,partthick]);
		rotate([0,90,0])translate([-1,(nemasize*2.54*5*sin(45))-partthick/2,-xroddia/sin(45)-nutwall*2/sin(45)-motorscrew/2])cube([partthick+1,partthick,nemasize*10*2.54]);
		rotate([0,90,0])translate([0,(nemasize*2.54*5*sin(45))+partthick/2,-xroddia/sin(45)-nutwall*2/sin(45)-motorscrew/2])rotate([0,0,180])cube([partthick,bushingod/2+nutwall*2+znutdia+nemasize*2.54*sin(45)*5,nemasize*10*2.54]);
		rotate([0,90,0])translate([partthick/2,nemasize*2.54*5*sin(45),nemasize*2.54*5*sin(45)])rotate([0,45,180])cube([partthick/sin(45)*0.5,bushingod/2+nutwall*2+znutdia+nemasize*2.54*sin(45)*5,partthick/sin(45)*0.5]);
			}


	}
	//cleanup cause my math sucks
	translate([-50,-50,-1])cube([100,100,1.6]);

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

	//leadscrew
	translate([0,bushingod/2+znutdia/2+nutwall,0])rotate([0,0,30])cylinder(r=znutdia/2, h=znuth, $fn=6);
	translate([0,bushingod/2+znutdia/2+nutwall,znuth])rotate([0,0,30])cylinder(r=zbeforetapdia/2, h=znuth);
	//motor screws
		translate([bushingod/2+nutwall,bushingod/2+nutwall*2+znutdia,xroddia+nutwall*sin(45)+xrodspacing/2-nemasize*2.54*5*sin(45)])rotate([0,-90,0]){
		translate([nemasize*2.54*sin(45)*10,nemasize*2.54*sin(45)*10,-1])cylinder(r=motorscrew/2, h=partthick+2);
		translate([0,nemasize*2.54*sin(45)*10,-1])cylinder(r=motorscrew/2, h=partthick+2);
		translate([nemasize*2.54*sin(45)*10,0,-1])cylinder(r=motorscrew/2, h=partthick+2);
		translate([0,0,-1])cylinder(r=motorscrew/2, h=partthick+2);
		translate([nemasize*2.54*sin(45)*5,nemasize*2.54*sin(45)*5,-1-partthick])cylinder(r=motorcenter/2, h=partthick*2+2); //motorcenter
			}
		
}