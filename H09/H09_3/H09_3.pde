int mijnGetal;

void setup(){
mijnGetal = mijnMethode(7, 19);
println(mijnGetal);
}

void draw(){

}

int mijnMethode(int getal, int getaltwee){
  int totaal = getal + getaltwee;
  return totaal;
}
