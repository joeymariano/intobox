float d;
float x;
boolean grow = true;
int boundary = 20;

void settings() {
  size(500,500,P3D);
}

void setup(){
  strokeCap(PROJECT);
  fill(#a0f1f7);
  smooth();
  strokeWeight(.09);
}

void draw(){
   stroke(#a0f1f7);
   background(0);
   pointLight(200, 200, 200, width/2, height/2, 200);
   camera(width/PI, height/PI, 300, width/2, height/2, 0, 0, 1, 0);
   translate(width/2, height/2);
   scale(50);
   rotateZ(PI/d);
   
   if (d <= 0){
     grow = true;
   }
   if (d >= boundary){
     grow = false;
   }
   
   if (grow == true){
     d += .2;
   }
   if (grow == false){
     d -= .2;
   }
   
   box(d, d, d);
}
