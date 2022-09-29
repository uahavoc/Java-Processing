import controlP5.*;

ControlP5 cp;

Textfield TF1;
Button knop1;

void setup(){
  size(300,300);
  
  cp = new ControlP5(this);
  
TF1 = cp.addTextfield("Textfield")
  .setText("Rania")
  .setSize(80,80)
  .setPosition(200,200)
  .setCaptionLabel("");
knop1 = cp.addButton("Knop1")
        .setCaptionLabel("hoohoo");
}

void draw(){
  background(0,0,0);
}

void Knop1(){
  println("Hoi, mijn naam is: " + TF1.getText());
}
