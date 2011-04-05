//motor vars
//nemasize= 1.7;
//motorwallmulti= 1.7;
//motorscrew = 4;
//motorcenter= 23;
//centerwallmulti = 1.5;
//motorbody = 43;

//partthick = 7;
//toprodbefore =7;
//toproddia = 8.5;
//toprodwall = 3;
//toprodspacing = 72;
//sideroddia =7;
//siderodwall = 3;
//angle = 60;

//bushingod = 16;
//zsmoothdia =8;
//nutwall = 2;
//znutdia = 8;


include <config.scad>;
$fn = 30;

difference(){
union(){
		translate([0,0,(toproddia/2+toprodwall)])rotate([-90,0,0])cylinder(r=toproddia/2+toprodwall, h=nemasize*2.54*10*sin(45));
		translate([toprodspacing,0,(toproddia/2+toprodwall)])rotate([-90,0,0])cylinder(r=toproddia/2+toprodwall, h=nemasize*2.54*10*sin(45));
		translate([-toproddia/4-toprodwall,0,0])cube([toprodspacing+(toproddia/4+toprodwall)*2,nemasize*2.54*10*sin(45),partthick]);
		translate([toprodspacing/2-(nemasize*2.54*sin(45)*5),siderodwall+sideroddia/2-(nemasize*2.54*sin(45)*5)+bushingod/2+znutdia/2+nutwall,0]){
		//motor construction
		translate([nemasize*2.54*sin(45)*10,nemasize*2.54*sin(45)*10,0])cylinder(r=motorscrew/2*motorwallmulti, h=partthick);
		translate([0,nemasize*2.54*sin(45)*10,0])cylinder(r=motorscrew/2*motorwallmulti, h=partthick);
		translate([nemasize*2.54*sin(45)*10,0,0])cylinder(r=motorscrew/2*motorwallmulti, h=partthick);
		translate([0,0,0])cylinder(r=motorscrew/2*motorwallmulti, h=partthick);
		translate([nemasize*2.54*sin(45)*5,nemasize*2.54*sin(45)*5,0])cylinder(r=motorcenter/2*centerwallmulti, h=partthick); //motorcenter
translate([-motorscrew/2*motorwallmulti*sin(45),motorscrew/2*motorwallmulti*sin(45),0])rotate([0,0,-45])cube([motorscrew*motorwallmulti,nemasize*2.54*10,partthick]);
		translate([nemasize*2.54*sin(45)*10-(motorscrew/2*motorwallmulti*sin(45)),-motorscrew/2*motorwallmulti*sin(45),0])rotate([0,0,45])cube([motorscrew*motorwallmulti,nemasize*2.54*10,partthick]);
			}
		translate([toprodspacing/2,sideroddia+siderodwall*2,-1])cylinder(r=zsmoothdia/2+siderodwall,h=partthick);
			
		translate([cos(angle/2)*sideroddia/2+toprodspacing-toprodwall*2-toproddia,sideroddia/2+siderodwall,cos(angle/2)*sideroddia/2])rotate([0,angle/2,0])cylinder(r=sideroddia/2+siderodwall, h=(toproddia+toprodwall*2));
		translate([cos(angle/2)*sideroddia/2+toproddia,sideroddia/2+siderodwall,cos(angle/2)*sideroddia/2])rotate([0,-angle/2,0])cylinder(r=sideroddia/2+siderodwall, h=(toproddia+toprodwall*2));
	
	
}

		translate([0,0,-2])cube([100,100,2]);
		translate([0,-1,(toproddia/2+toprodwall)])rotate([-90,0,0])cylinder(r=toproddia/2, h=100+2);
		translate([toprodspacing,-1,(toproddia/2+toprodwall)])rotate([-90,0,0])cylinder(r=toproddia/2, h=100+2);
		translate([cos(angle/2)*sideroddia/2+toprodspacing-toprodwall*2-toproddia,sideroddia/2+siderodwall,cos(angle/2)*sideroddia/2])rotate([0,angle/2,0])cylinder(r=siderodtap/2, h=100,center=true);
		translate([cos(angle/2)*sideroddia/2+toproddia,sideroddia/2+siderodwall,cos(angle/2)*sideroddia/2])rotate([0,-angle/2,0])cylinder(r=siderodtap/2, h=100,center=true);
		
	
		
		translate([toprodspacing/2,sideroddia/2+siderodwall,-1])cylinder(r=zsmoothdia/2,h=partthick+2);

		translate([toprodspacing/2-(nemasize*2.54*sin(45)*5),siderodwall+sideroddia/2-(nemasize*2.54*sin(45)*5)+bushingod/2+znutdia/2+nutwall,0]){
		//motor screws
		translate([nemasize*2.54*sin(45)*10,nemasize*2.54*sin(45)*10,0])cylinder(r=motorscrew/2, h=partthick);
		translate([0,nemasize*2.54*sin(45)*10,0])cylinder(r=motorscrew/2, h=partthick);
		translate([nemasize*2.54*sin(45)*10,0,0])cylinder(r=motorscrew/2, h=partthick);
		translate([0,0,0])cylinder(r=motorscrew/2, h=partthick);
		translate([nemasize*2.54*sin(45)*5,nemasize*2.54*sin(45)*5,0])cylinder(r=motorcenter/2, h=partthick); //motorcenter
			}

}
