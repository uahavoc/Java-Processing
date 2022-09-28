size(300,300);
background(20,250,180);

int sizeC = 90;

for(int i = 0; i < 5; i++){
  ellipse(180 - sizeC/2, 180, sizeC,sizeC);
  sizeC-= 20;
}
