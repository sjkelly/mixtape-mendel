// This is the config for an M8 Mendel sized printer.

//Constants (These are used throughout the whole printer)
frameroddia = 8; //the frame rod diameter
smoothroddia = 8; //the smooth rod diameter
bushingod = 15; //The prusabushing OD, you can change this to 15 to use LM8UU linear bearings 
bushingheight = 24;

nemasize = 1.7; //Nema Size (in imperial)
motorcenter = 23; //center hole size for the motor. If your motor center flange is smaller you can beef up parts this way. 
motorshaftdia = 5; // Motor shaft diameter
motorcenterwall = 5;
motorbody = 43;

pulleypitch = 5; //trapezoidal TODO
pulleyteeth = 8;

/* The Mixtape Mendel uses two types of fasteners. One is the "primary" type, which is the larger type that builds the structure,
 which was profiled above as "frameroddia, etc..". In the case of the Mendel, it is M8 threaded rod (Huxley, M6). It also uses "Secondary" hardware. This is a smaller screw used to retain tool heads, attach motors and lock pulleys on shafts. In the case of Mendel this is M3 or M4. M3 is preferred as it is cheaper.
*/
nutheight = 7; //Primary
nutdia = 14.8; //Primary
secscrewdia = 4; //secondary 

beltthick = 2; //Thickness of the timing belt
beltwidth = 6; // Belt width used for the y bed clamps

mdfthick = 6; //thickness of MDF (You can use other wood, acrylic, lexan, etc)

bearingid = 8; // 608
bearingod = 22; // 608
bearinginnerrace = 12; // the amount of the inner race diameter exposed

layerheight = 0.32; //skeinforge/slicer layer height, used for the idler wasers right now. 

//Beef/tab/wall
motortabwall = 2.5;

//Frame Vertex
vertexwall = 3;
triangle = 60; // the angle the bottom vertexes have relative to horizontal

//Y Motor Mount
ymountthick = 9;
ywallmulti = 2; //the wall thickness multiplier for the bits that interface with the frame rod

//Y Belt Clamps
clampholewall = 3;
	//(bushingod-pulleydia)/2

//Top Piece
toppiecethick = 8;
toprodwall = 4;
toprodspacing = 72;
siderodwall = 4;

// X End Pieces
xrodspacing = 50; //rod spacing center to center
nutwall = 3; //wall thickness around nut and bushing
towergap= 10; // 0.75 diameter wrap should be ok i think. Make a flag for full wrap and no square for bushings/linear bearings maybe?

//X Carriage 
carriagewidth = 50;
tooldia = 17;
platformthick = 7;
platformextension = 40; 

//Z Coupler 
//TODO - Redesign
//couplerwall = 4;
//couplerheight = 34; // Make this double 3/4 your shaft length
 
//Extruder (Plastic Pusher)
bowdencabledia = 4;
pinchwheeldia = 8;

//Mendel Bowden Mount
mountspacing = 50;

//Groove Mount
	//Default is pretty good for MakerGear insulators
groovedia = 12;
grooveheight = 4.5;

//pen holder 
penshaftheight = 30;
