// This is the config for an M8 Mendel sized printer.

//Constants (These are used throughout the whole printer)
frameroddia = 8.5; //the frame rod diameter
smoothroddia = 8.5; //the smooth rod diameter
bushingod = 16; //The prusabushing OD, you can change this to 15 to use LM8UU linear bearings 
tapsize = 7; //The size of the hole before tapping. 7mm seems to work well.

nemasize = 1.7; //Nema Size (in imperial)
motorscrew = 4; //Hole diameter for mounting the motor
motorcenter = 23; //center hole size for the motor

nutheight = 7;
nutdia = 14.8;

beltthick = 2; //Thickness of the timing belt
beltwidth = 7; // Belt width, used for the y bed clamps

bearingid = 8; // 608
bearingod = 22; // 608
bearinginnerrace = 12; // the amount of the inner race exposed

tapping = true; //turn tapping on/off, not implemented yet. (Version 0.3) Version 0.2 has tapping by default right now
layerheight = 0.32; //skeinforge/slicer layer height, used for the idler wasers right now

//Frame Vertex
vertexwall = 3;
triangle = 60;

//Y Motor Mount
ymountthick = 9;
ywallmulti = 2; //the wall thickness multiplier for the bits that interface with the frame rod
ymotorwallmulti = 2.4; //multiplier for the motor holes because you might want them thicker
ycenterwallmulti = 1.5; //multiplier for the center hole because you might want them thinner

//Y Belt Clamps
clampthick = 4;
clampholedia = 4;
clampholewall = 3;

//Top Piece
motorwallmulti= 1.9;
centerwallmulti = 1.7;
partthick = 8;
toprodwall = 4;
toprodspacing = 72;
siderodwall = 4;

// X End Pieces
xrodspacing = 55; //rod spacing center to center
nutwall = 3; //wall thickness around nut and bushing
towergap= 10; // 0.75 diameter wrap should be ok i think. Make a flag for full wrap and no square for bushings/linear bearings maybe?
// Idler
idlerthick = 4.5; //no
idlerwidth = 4.5; //no
idlergap = 8; //no
//Motor
wallmulti = 1.5; //no
motorwallmulti = 1.7; //no
partthick = 8; //thickness of the motor mount (6 works well, need to decouple from top piece)
centerwallmulti = 1.5; // center motor hole multi

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
clampthick = 4;
clampholedia = 4;

//Extruder

//Groove Mount
	//Default is pretty good for MakerGear insulators
groovedia = 12;
grooveheight = 4.5;

//pen holder 
penwall = 3 ;
holdingscrewdia = 3;
shaftheight = 30;
