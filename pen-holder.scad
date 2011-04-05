include <config.scad>;

difference(){
union(){
translate([-adapterholedia/2-tool1dia/2-penwall/2,platformextension/2-tool1dia/2-penwall,0])cube([tool1dia+penwall*2,tool1dia+penwall*2,shaftheight]);
translate([0,platformextension/6,0])cylinder(r=adapterholedia/2 + penwall,h=platformthick);
translate([0,platformextension*0.833,0])cylinder(r=adapterholedia/2 + penwall,h=platformthick);
translate([-adapterholedia/2-penwall,platformextension/6,0])cube([adapterholedia+penwall*2,platformextension*0.66,platformthick]);

}
translate([-adapterholedia/2-tool1dia/2-penwall/2,platformextension/2-tool1dia/2-penwall,shaftheight/4])rotate([0,-90,-135])cylinder(r=holdingscrewdia/2, h = tool1dia);
translate([-adapterholedia/2-tool1dia/2-penwall/2,platformextension/2-tool1dia/2-penwall,shaftheight])rotate([0,-90,-135])cylinder(r=holdingscrewdia/2, h = tool1dia);
translate([-adapterholedia/2-tool1dia/2+penwall/2,platformextension/2-tool1dia/2,0])cube([tool1dia,tool1dia,shaftheight]);
translate([0,platformextension/6,-1])cylinder(r=adapterholedia/2,h=platformthick+2);
translate([0,platformextension*0.833,-1])cylinder(r=adapterholedia/2,h=platformthick+2);
}