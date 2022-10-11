String zoekNaam = "Bumba";
Boolean gevonden = false;
String[] namen = {"Jan" , "Bob" , "Augurk" , "Cat"};

void setup(){
  for(int i = 0; i < namen. length; i++){
    if(zoekNaam == namen[i]){
      gevonden = true;
    }
 }

if(gevonden){
  println(" De naam " + zoekNaam + " bestaat ");
 }else{
   println(" De naam " + zoekNaam + " heb ik nooit van gehoord! ");
 }
}
