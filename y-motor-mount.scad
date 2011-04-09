include <config.scad>;
$fn = 31;

//construction
	difference(){
		union(){
		//vertex interfaces
		translate([nemasize*2.54*10,nemasize*2.54*5*sin(45),0])cylinder(r=frameroddia/2*ywallmulti, h=ymountthick);
		translate([frameroddia*3*sin(45)+(nemasize*2.54*10),nemasize*2.54*5*sin(45)-frameroddia*3*sin(45),0])cylinder(r=frameroddia/2*ywallmulti, h=ymountthick);
		//connetors
		translate([nemasize*2.54*10-(sin(45)*frameroddia/2*ywallmulti),nemasize*2.54*5*sin(45)-frameroddia/2*ywallmulti*sin(45),0])rotate([0,0,-45])cube([frameroddia*3,frameroddia*ywallmulti,ymountthick]);
		translate([nemasize*2.54*5*sin(45),nemasize*2.54*5*sin(45)-frameroddia/2*ywallmulti,0])cube([nemasize*2.54*5+frameroddia/2*ywallmulti,frameroddia*ywallmulti,ymountthick]);
		//motor construction
		translate([nemasize*2.54*sin(45)*10,nemasize*2.54*sin(45)*10,0])cylinder(r=motorscrew/2*ymotorwallmulti, h=ymountthick);
		translate([0,nemasize*2.54*sin(45)*10,0])cylinder(r=motorscrew/2*ymotorwallmulti, h=ymountthick);
		translate([nemasize*2.54*sin(45)*10,0,0])cylinder(r=motorscrew/2*ymotorwallmulti, h=ymountthick);
		translate([0,0,0])cylinder(r=motorscrew/2*ymotorwallmulti, h=ymountthick);
		translate([nemasize*2.54*sin(45)*5,nemasize*2.54*sin(45)*5,0])cylinder(r=motorcenter/2*ycenterwallmulti, h=ymountthick); //motorcenter
		translate([-motorscrew/2*ymotorwallmulti*sin(45),motorscrew/2*ymotorwallmulti*sin(45),0])rotate([0,0,-45])cube([motorscrew*ymotorwallmulti,nemasize*2.54*10,ymountthick]);
		translate([nemasize*2.54*sin(45)*10-(motorscrew/2*ymotorwallmulti*sin(45)),-motorscrew/2*ymotorwallmulti*sin(45),0])rotate([0,0,45])cube([motorscrew*ymotorwallmulti,nemasize*2.54*10,ymountthick]);
		}
			//vertex interfaces
			translate([nemasize*2.54*10,nemasize*2.54*5*sin(45),0])cylinder(r=framerodtap/2, h=ymountthick);
			translate([frameroddia*3*sin(45)+(nemasize*2.54*10),nemasize*2.54*5*sin(45)-frameroddia*3*sin(45),0])cylinder(r=frameroddia/2, h=ymountthick);
			//motor screws
			translate([nemasize*2.54*sin(45)*10,nemasize*2.54*sin(45)*10,0])cylinder(r=motorscrew/2, h=ymountthick);
			translate([0,nemasize*2.54*sin(45)*10,0])cylinder(r=motorscrew/2, h=ymountthick);
			translate([nemasize*2.54*sin(45)*10,0,0])cylinder(r=motorscrew/2, h=ymountthick);
			translate([0,0,0])cylinder(r=motorscrew/2, h=ymountthick);
			translate([nemasize*2.54*sin(45)*5,nemasize*2.54*sin(45)*5,0])cylinder(r=motorcenter/2, h=ymountthick); //motorcenter
	}
