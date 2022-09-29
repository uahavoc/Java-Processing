import controlP5.*;

ControlP5 cp;

Button knop1;
Button knop2;

void setup(){
  size(300,300);
  background(210,140,200);
  
  cp = new ControlP5(this);
  
  knop1 = cp.addButton("Knop1")
            .setPosition(30,30)
            .setSize(80,80)
            .setCaptionLabel("Klik mij!");
  knop2 = cp.addButton("Knop2")
            .setPosition(200,200)
            .setSize(80,80)
            .setCaptionLabel("Klik mij ook!");
            
       knop1.setColorForeground(color(400,350,130));
       knop2.setColorForeground(color(400,350,130));
            
}

void draw(){
    background(210,140,200);
}

void Knop1(){
  println("Helaas fout!");
}

void Knop2(){
  println("Goed gedaan!");
}
