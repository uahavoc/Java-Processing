int Size = 1;
int y , x ;

void setup(){
size(500,500);
frameRate(60);

rectMode(CENTER);

}

void draw(){
//background(0);
  
  snakeBobby();

}

void snakeBobby(){

  if(keyCode == 38){
y-=Size;

}

if(keyCode == 40){
y+=Size;

}

if(keyCode == 37){

x-=Size;
}

if(keyCode == 39){

x+=Size;
}
  
rect(x,y,Size,Size);
  
}
