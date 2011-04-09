//This REALLY REALLY needs to get organized. I will start sorting through it ASAP 
// This is the config for an M8 Mendel sized printer.

//Constants (These are used throughout the whole printer)
frameroddia = 8.5; //the frame rod diameter
smoothroddia = 8.5; //the smooth rod diameter
bushingod = 16; //The prusabushing OD, you can change this to 15 to use LM8UU linear bearings 
tapsize = 7; //The size of the hole before tapping. 7mm seems to work well.
nemasize = 1.7; //Nema Size (in imperial)
motorscrew = 4; //Hole diameter for mounting the motor
motorcenter = 23; //center hole size for the motor
tapping = true; //turn tapping on/off, not implemented yet. (Version 0.3) Version 0.2 has tapping by default right now

//Frame Vertex
framerodsize = 8.5;
framerodtap = 7; 
vertexwall = 3;
vertexthick = framerodsize*2 + vertexwall*2; // I would say leave this alone. 
triangle= 60;

//Y Motor Mount
ymountthick = 9;
ywallmulti = 2; //the wall thickness multiplier for the bits that interface with the frame rod
ymotorwallmulti = 2.4; //multiplier for the motor holes because you might want them thicker
ycenterwallmulti = 1.5; //multiplier for the center hole because you might want them thinner

//Top piece vars
motorwallmulti= 1.9;
centerwallmulti = 1.7;
motorbody = 43;

partthick = 8;
toprodbefore = tapsize;
toproddia = frameroddia;
toprodwall = 4;
toprodspacing = 72;
siderodtap = tapsize;
sideroddia = frameroddia;
siderodwall = 4;
angle = triangle;

zsmoothdia = smoothroddia;

xrodspacing = 55; //rod spacing center to center
xroddia = smoothroddia; 
znutdia = 14.8;
znuth = 7; //znut height
zroddia = smoothroddia;
nutwall = 3; //wall thickness
zbeforetapdia = tapsize; 
bushingtower = xroddia+nutwall*sin(45)+xrodspacing ;
towergap = 10;
wallmulti = 1.5;
motorwallmulti = 1.7;
partthick = 7.5; //thickness of the motor mount
centerwallmulti = 1.5; // center motor hole multi
supportwidth = 17;

//X Carriage 
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
