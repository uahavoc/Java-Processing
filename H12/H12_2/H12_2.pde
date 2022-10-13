

int teller;

void setup(){
size(222,222);


}


void draw(){

  
  background(100,200,180);
  textSize(15);
  text(millis() / 1000,20,20);

  
  if(millis() / 1000 >= 10){
    background(100,0,190);
  }
  
    textSize(50);
    text(teller,96,96);

}

void keyPressed(){
if(keyCode == 32 && millis() / 1000 < 10){
  teller++;
}

}
