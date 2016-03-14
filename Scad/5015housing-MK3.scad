use <BezierScad.scad>;


rotate([180,0,0]){difference(){
    
    
union(){
linear_extrude(height = 3, center = false, convexity = 10, $fn=100)
   import (file = "5015housing-MK3.dxf", layer = "Base");
   
    
  translate([0,0, -7])linear_extrude(height = 10, center = false, convexity = 10, $fn=150)
  import (file = "5015housing-MK3.dxf", layer = "pillar");
   
    
    //Strany tunelu
   translate([0,0, -14])linear_extrude(height = 14, center = false, convexity = 10, $fn=150)
   import (file = "5015housing-MK3.dxf", layer = "Funnel");
    
    //vrsek tunelu
    translate([0,0, -15])linear_extrude(height = 1.5, center = false, convexity = 10, $fn=150)
   import (file = "5015housing-MK3.dxf", layer = "Top");
    
    
   // translate([0,0, -9])linear_extrude(height = 9, center = false, convexity = 10, $fn=200)
   //import (file = "5015housing-MK3.dxf", layer = "Pins");
    
}

 //translate([0,0, -10])linear_extrude(height = 10, center = false, convexity = 10, $fn=200)
   //import (file = "5015housing-MK3.dxf", layer = "holes");

//díry
 translate([0,0, -5])linear_extrude(height = 10, center = false, convexity = 10, $fn=150)
   import (file = "5015housing-MK3.dxf", layer = "Holes-thru");

 translate([0,0, -7])linear_extrude(height = 0.8, center = false, convexity = 10, $fn=150)
   import (file = "5015housing-MK3.dxf", layer = "Ziptie-cutout");

translate([-36,-12.5+4+6.2,5])rotate([12.5,100,0])rotate([0,0,1])cylinder(r=1.65, h=38, $fn=20);
translate([-36,-12.5+4+6.2,5.1])rotate([12.5,100,0])rotate([0,0,1])cylinder(r=1.65, h=38, $fn=20);

}
difference(){
    union(){
translate([29-3-0.5-2,-12.5,-22-2])rotate([0,0,1])cube([6,7,9]);
    translate([29-3-2,-12.5-2,-22+5.2])cube([5,9,2]);
    }
translate([20,-12.5+3.5,-22+3.5-2+0.5])rotate([0,90,0])rotate([0,0,1])cylinder(r=1.6, h=20, $fn=20);


    
}

// Adding code
// Michal Blažek
// 10.3.2016
x=53.8;
y=-31;
z=-15;
color("red")
    difference(){
        translate([x,y,z]){
            rotate([0,0,45]){
                cube([7,15,18]);
                }
            }
                translate([x+1.5,y,z+1]){
                    rotate([0,0,45]){
                        cube([5,17,14]);
                }
            }
            translate([x1,y1,z1]){
            rotate([0,0,90]){
                cube([7,15,25]);
                }
            }
}

x1=68.5;
y1=-30.9;
z1=-22;
color("blue")
    difference(){
        translate([x1,y1,z1]){
            rotate([0,0,90]){
                cube([7,15,25]);
                }
            }
                translate([x1-1,y1+1,z1]){
                    rotate([0,0,90]){
                        cube([5,16,23]);
                }
            }
}


color("green")
translate([54.5,-30.9   ,-22]){
            rotate([0,0,90]){
                cube([7,1,8]);
                }
            }
}