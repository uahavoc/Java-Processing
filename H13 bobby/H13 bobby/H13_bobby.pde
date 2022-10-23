ArrayList<Integer> x = new ArrayList<Integer>(), y = new ArrayList<Integer>();
int w=30, h=30, blocks=20, direction=2, applex=10, appley=10, speed = 9, ac1 = 200, ac2 = 200, ac3 = 200; 
int[]x_direction={0, 0, 1, -1}, y_direction={1, -1, 0, 0}; //direction x and y

boolean tryagain=false;

void setup() { 
  size(600,600); 
  x.add(0); //bobby start position
  y.add(15);
}   


void draw() {  
  background(0,0,0);
  fill(200,400,130); //bobby color 
  for (int i = 0; i < x.size(); i++) rect(x.get(i)*blocks, y.get(i)*blocks, blocks, blocks); //bobby
  if (!tryagain) {  
    
    fill(ac1, ac2, ac3); //apple color
    ellipse(applex*blocks+10, appley*blocks+10, blocks, blocks); //apple
    
    textAlign(CENTER); //score
    textSize(20);
    fill(255,255,255);
    text("score: " + x.size(), 5, 5, width - 15, 45);
    
    if (frameCount%speed==0) { 
      x.add(0, x.get(0) + x_direction[direction]); //bobby longer
      y.add(0, y.get(0) + y_direction[direction]);
      if (x.get(0) < 0 || y.get(0) < 0 || x.get(0) >= w || y.get(0) >= h) tryagain = true; 
      for (int i=1; i<x.size(); i++) 
        if (x.get(0)==x.get(i)&&y.get(0)==y.get(i)) tryagain=true; 
      if (x.get(0)==applex && y.get(0)==appley) { //new apple if bobby touch
         if (x.size() %5==0 && speed>=2) speed-=1;  //5 points speed increase
        applex = (int)random(0, w); //new apple
        appley = (int)random(0, h);
        ac1 = (int)random(200); ac2 = (int)random(200); ac3 = (int)random(200); //new apple color
        
      } else { 
        x.remove(x.size()-1); 
        y.remove(y.size()-1);
      }
    }   
  } else {
    fill(255,255,255); 
    textSize(15); 
    textAlign(CENTER); 
    text("Try Again? \n Your score is: "+ x.size() +"\n Press space", width/2, height/3);
    if (keyCode == 32) {
      x.clear(); 
      y.clear(); 
      x.add(0);  
      y.add(15);
      direction = 2;
      speed = 9;
      tryagain = false;
    }
  }
}
void keyPressed() { 
  int newdir=keyCode == DOWN? 0:(keyCode == UP?1:(keyCode == RIGHT?2:(keyCode == LEFT?3:-1)));
  if (newdir != -1) direction = newdir;
}
