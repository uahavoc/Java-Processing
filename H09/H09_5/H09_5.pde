String zin;

void setup(){
  zin = langeZin("On","Wednsedays","we","wear","pink");
  println(zin);
}

void draw(){
  
}

String langeZin(String a, String b, String c, String d, String e){
  String antwoord;
  antwoord = a + " " + b + " " + c + " "+ d + " " + e;
  return antwoord;
}
