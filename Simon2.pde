//MAIN
int round, answer, counter;
boolean reset, check;
ArrayList <Integer> tiles = new ArrayList<Integer>(); 

 void setup() {
  size(800,800);
  background(0);
  reset();
  reset = false;
  round = 1;
  counter = 0;
  tiles.add(Math.round(random(0,3)));
 }
 
 
 void draw(){
   frameRate(1);
   if(reset && counter<round){drawTile(tiles.get(counter));reset=false; counter++;}
   else{reset();reset=true;}
   if (counter > round){
     check();
   }

 }

 
 void drawTile(int i){                              //eigentlich nur zum Random wählen welches Feld gefärbt wird gedacht...

 if (i==0){ //rechts unten
   fill(0,252,0);
   arc(400, 400, 400, 400, 0, HALF_PI);
   System.out.println("rechts unten");
   }
 else if (i==1){ // links unten
   fill(252,0,0);
   arc(390, 400, 400, 400, HALF_PI, PI);
        System.out.println("links unten");
   }
 else if (i==2){ //links oben
   fill(0,0,252);
   arc(390, 390, 400, 400, PI, PI+HALF_PI);
   System.out.println("links oben");
   }
 else if (i==3){ //rechts oben
   fill(238,238,0);
   arc(400, 390, 400, 400, PI+HALF_PI,2*PI);
   System.out.println("rechts oben");
   }
 }

void reset(){
    fill(255);
   arc(400, 400, 400, 400, 0, HALF_PI); 
   arc(390, 400, 400, 400, HALF_PI, PI); 
   arc(390, 390, 400, 400, PI, PI+HALF_PI); 
   arc(400, 390, 400, 400, PI+HALF_PI,2*PI); 
}

void check(){
  check=true;
  noLoop();
  round++;
  counter = 0;
  check = false;
  tiles.add(Math.round(random(0,3)));
}

void mouseClicked(){
  if (check){
    
  }

}
