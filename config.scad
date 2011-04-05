//This REALLY REALLY needs to get organized. I will start sorting through it ASAP 

//Vars for the fram vertex. This is still kind of confusing. File is broke sometimes. I would watch this in preview before trusting these values.
framerodsize = 8.5;
framerodtap =7; // we use this one in the y motor for the top rod that gets tapped as well
vertexwall = 3;
vertexthick = framerodsize*2 + vertexwall*2; // I would say leave this alone. 
triangle= 60;
mirror=false;

// vars for the y motor mount
vertexhole = 8; //the diameter of the vertex hole in whosawhatasis vertex. Really important these values match.
partthick =9;
wallmulti = 2; //the wall thickness multiplier
motorwallmulti = 2.3; //multiplier for the motor holes because you might want them thicker
centerwallmulti = 1.5; //multiplier for the center hole because you might want them thinner
nemasize = 1.7;
motorscrew = 4; //diameter of the motor attachment screw
motorcenter = 24; //center hole size for the motor

//Top piece vars
nemasize= 1.7;
motorwallmulti= 1.9;
motorscrew = 4;
motorcenter= 23;
centerwallmulti = 1.7;
motorbody = 43;

partthick = 8;
toprodbefore =7;
toproddia = 8.5;
toprodwall = 4;
toprodspacing = 72;
siderodtap = 7;
sideroddia = 8;
siderodwall = 4;
angle = 60;

zsmoothdia =8;

xrodspacing = 55; //rod spacing center to center
xroddia = 8; //rod diamter
nemasize = 1.7;
znutdia = 14.8;
znuth = 7; //znut height
zroddia = 8;
nutwall = 3; //wall thickness
zbeforetapdia = 7.5; 
bushingod = 16;
bushingtower =xroddia+nutwall*sin(45)+xrodspacing ;
towergap= 10;
wallmulti = 1.5;
motorwallmulti = 1.7;
motorscrew =4;
partthick = 7.5; //thickness of the motor mount
centerwallmulti = 1.5; // center motor hole multi
motorcenter = 24;
supportwidth = 17;
$fn = 30;

//xcarriage 
carriagewidth = 60;
bushingwall = 3;
backwall = 5;
tools = 2;
tool1dia = 16;
tool2dia = 16;
adapterholedia = 4;
platformthick = 10;
platformextension = 40; 
pulleydia = 12;
beltthick = 2;
clampthick = 4;
clampholedia = 4;

//pen holder 
penwall = 3 ;
holdingscrewdia = 3;
shaftheight = 30;
