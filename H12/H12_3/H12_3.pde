

void setup(){
  size(300,300);
  background(0,0,0);

}

void draw(){

}
 
 void mouseMoved(){
   int r = floor(random(300));
   int g = floor(random(300));
   int b = floor(random(300));
   fill(r,g,b);
   rect(mouseX,mouseY,5,5);
 }
