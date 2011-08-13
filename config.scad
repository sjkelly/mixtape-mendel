// This is the config for an M8 Mendel sized printer.

buildx = 200; //build area on the x axis
buildy = 200; //build area on the y axis
buildz = 120; //build area on the z axis

frameroddia = 9; //the frame rod diameter
smoothroddia = 8; //the smooth rod diameter
bushingod = 15; //The prusabushing OD, you can change this to 15 to use LM8UU linear bearings 
bushingheight = 24; 

nemasize = 1.7; //Nema Size TODO just make this 17, 23,14 etc
motorcenter = 23; //center hole size for the motor mount. If your motor center flange is smaller you can beef up parts this way. 
motorshaftdia = 5; // Motor shaft diameter
motorbody = 43;

pulleypitch = 5; //trapezoidal pulley script TODO
pulleyteeth = 8; 
beltwidth = 6; // Belt width 

/* The Mixtape Mendel uses two types of fasteners. One is the "primary" type, which is the larger type that builds the structure,
 which was profiled above as "frameroddia, etc..". In the case of the Mendel, it is M8 threaded rod (Huxley, M6). It also uses "Secondary" hardware. This is a smaller screw which normally corerelates with the motor screw used.
*/
nutheight = 7; //Primary
nutapothem = 13; //Primary nut apothem (wrench size)

secscrewdia = 4; //secondary 
secscrewheaddia = 6; //secondary screw head diameter
secscrewheadheight = 3; //secondary screw head height
secnutapothem = 5.5; //secondary nut apothem (wrench size)
secnutheight = 2.4; //secondary

mdfthick = 6; //thickness of MDF (You can use other wood, acrylic, lexan, etc)

bearingid = 8; // 608
bearingod = 22; // 608
bearinginnerrace = 12; // the amount of the inner race diameter exposed

layerheight = 0.32; //skeinforge/slicer layer height, used for the idler wasers right now. 

//Groove Mount
	//Default is pretty good for MakerGear insulators
groovedia = 12;
grooveheight = 4.5;

