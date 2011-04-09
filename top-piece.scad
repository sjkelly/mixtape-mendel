include <config.scad>;
$fn = 31;

difference(){
union(){
		translate([0,0,(frameroddia/2+toprodwall)])rotate([-90,0,0])cylinder(r=frameroddia/2+toprodwall, h=nemasize*2.54*10*sin(45));
		translate([toprodspacing,0,(frameroddia/2+toprodwall)])rotate([-90,0,0])cylinder(r=frameroddia/2+toprodwall, h=nemasize*2.54*10*sin(45));
		translate([-frameroddia/4-toprodwall,0,0])cube([toprodspacing+(frameroddia/4+toprodwall)*2,nemasize*2.54*10*sin(45),partthick]);
		translate([toprodspacing/2-(nemasize*2.54*sin(45)*5),siderodwall+frameroddia/2-(nemasize*2.54*sin(45)*5)+bushingod/2+znutdia/2+nutwall,0]){
		//motor construction
		translate([nemasize*2.54*sin(45)*10,nemasize*2.54*sin(45)*10,0])cylinder(r=motorscrew/2*motorwallmulti, h=partthick);
		translate([0,nemasize*2.54*sin(45)*10,0])cylinder(r=motorscrew/2*motorwallmulti, h=partthick);
		translate([nemasize*2.54*sin(45)*10,0,0])cylinder(r=motorscrew/2*motorwallmulti, h=partthick);
		translate([0,0,0])cylinder(r=motorscrew/2*motorwallmulti, h=partthick);
		translate([nemasize*2.54*sin(45)*5,nemasize*2.54*sin(45)*5,0])cylinder(r=motorcenter/2*centerwallmulti, h=partthick); //motorcenter
		translate([-motorscrew/2*motorwallmulti*sin(45),motorscrew/2*motorwallmulti*sin(45),0])rotate([0,0,-45])cube([motorscrew*motorwallmulti,nemasize*2.54*10,partthick]);
		translate([nemasize*2.54*sin(45)*10-(motorscrew/2*motorwallmulti*sin(45)),-motorscrew/2*motorwallmulti*sin(45),0])rotate([0,0,45])cube([motorscrew*motorwallmulti,nemasize*2.54*10,partthick]);
			}
		translate([toprodspacing/2,frameroddia+siderodwall*2,-1])cylinder(r=smoothroddia/2+siderodwall,h=partthick);
			
		translate([cos(triangle/2)*frameroddia/2+toprodspacing-toprodwall*2-frameroddia,frameroddia/2+siderodwall,cos(triangle/2)*frameroddia/2])rotate([0,triangle/2,0])cylinder(r=frameroddia/2+siderodwall, h=(frameroddia+toprodwall*2));
		translate([cos(triangle/2)*frameroddia/2+frameroddia,frameroddia/2+siderodwall,cos(triangle/2)*frameroddia/2])rotate([0,-triangle/2,0])cylinder(r=frameroddia/2+siderodwall, h=(frameroddia+toprodwall*2));
	
	
}

		translate([0,0,-2])cube([100,100,2]);
		translate([0,-1,(frameroddia/2+toprodwall)])rotate([-90,0,0])cylinder(r=frameroddia/2, h=100+2);
		translate([toprodspacing,-1,(frameroddia/2+toprodwall)])rotate([-90,0,0])cylinder(r=frameroddia/2, h=100+2);
		translate([cos(triangle/2)*frameroddia/2+toprodspacing-toprodwall*2-frameroddia,frameroddia/2+siderodwall,cos(triangle/2)*frameroddia/2])rotate([0,triangle/2,0])cylinder(r=tapsize/2, h=100,center=true);
		translate([cos(triangle/2)*frameroddia/2+frameroddia,frameroddia/2+siderodwall,cos(triangle/2)*frameroddia/2])rotate([0,-triangle/2,0])cylinder(r=tapsize/2, h=100,center=true);
		
	
		
		translate([toprodspacing/2,frameroddia/2+siderodwall,-1])cylinder(r=smoothroddia/2,h=partthick+2);

		translate([toprodspacing/2-(nemasize*2.54*sin(45)*5),siderodwall+frameroddia/2-(nemasize*2.54*sin(45)*5)+bushingod/2+znutdia/2+nutwall,0]){
		//motor screws
		translate([nemasize*2.54*sin(45)*10,nemasize*2.54*sin(45)*10,0])cylinder(r=motorscrew/2, h=partthick);
		translate([0,nemasize*2.54*sin(45)*10,0])cylinder(r=motorscrew/2, h=partthick);
		translate([nemasize*2.54*sin(45)*10,0,0])cylinder(r=motorscrew/2, h=partthick);
		translate([0,0,0])cylinder(r=motorscrew/2, h=partthick);
		translate([nemasize*2.54*sin(45)*5,nemasize*2.54*sin(45)*5,0])cylinder(r=motorcenter/2, h=partthick); //motorcenter
			}

}
