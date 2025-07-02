//mateo delgadino
//TP2
PImage foto1, foto2,foto3;
int mivariable = 1;
int segundos;
PFont t;

int posY;


void setup(){
  
size(640,480);
fill(255,0,0);
background(255);
textSize(37);
t = loadFont("Constantia.vlw");
textFont(t,37);
println(frameCount);
foto1=loadImage("fondo1.jpg"); 
foto2=loadImage("fondo2.jpg");
foto3=loadImage("fondo3.jpg");


}


void draw(){ 

  background(255);
if (frameCount > 1 && frameCount <580){
image(foto1,0,0);
float tono = map(mivariable,0,width,255,0);
fill(255,0,0, (int)tono);
text(" written y directed \n by quentin tarantino",mivariable,140,120);
textSize(59);
fill(255,0,0, (int)tono);
text("    django",mivariable,400,0);
text(" unchained",mivariable,460,0);
mivariable +=1;
}

 textSize(37);
if (frameCount > 600 && frameCount < 1300){
  int posY = (frameCount - 600) * 2 - 500;
  image(foto2,0,0);
  float tono = map(posY, -500,800,255,50);
fill(255,0,0 ,(int)tono);
mivariable = frameCount;
println(mivariable);
text("cast",265,posY + 100);
text("jamie foxx\n      as\n   django",90,posY + 190);
text("chiristoph waltz\n           as\n dr.king schultz",350,posY + 190);
text("   kerry washington\n             as\nbromhilda von schaft",150,posY + 360);
} 


  if (frameCount > 1330 && frameCount < 4000) { 
    tint(255, 0, 0); 
    image(foto3, 0, 0, width, height); 
    noTint();
    float tono = map(frameCount, 1330,2000,0,255);
     fill(255,(int)tono);
   text("leonardo dicaprio\n           as\n calvin j. candie",10,200);
    text("samuel L. jackson\n           as\n       stephen",353,200);
     fill(255,(int)tono);
 text("cast",270,60);
  mivariable = frameCount;
   fill(255, 255, 255);
  rect(250, 400, 150, 50);
  fill(0);
  text("Reiniciar", 250, 440);
  } 
}
void mousePressed(){
  if (mouseX > 250 && mouseX < 400 && mouseY > 400 && mouseY < 450 && frameCount >1330) {

    mivariable = 1;
    frameCount = 0;
 
  }
}
