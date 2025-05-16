//mateo delgadino
//TP2
PImage foto1, foto2,foto3;
int mivariable = 1;
int segundos;
PFont t;
//String texto= "django";
boolean reiniciar = false;
 
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
image(foto1,mivariable,0);
image(foto2,0,mivariable-1000);
fill(255,0,0);
mivariable = frameCount;
println(mivariable);
text("cast",265,mivariable-900);
text("jamie foxx\n      as\n   django",90,mivariable-800);
text("chiristoph waltz\n           as\n dr.king schultz",350,mivariable-800);
text("   kerry washington\n             as\nbromhilda von schaft",150,mivariable-630);
text("             written y directed \n          by quentin tarantino",mivariable,140,150);
textSize(59);
text("             django",mivariable,400,0);
  textSize(37);   
  if (frameCount > 1500 && frameCount < 2000) { 
    tint(255, 0, 0); 
    image(foto3, 0, 0, width, height); 
    noTint();
     fill(255);
   text("leonardo dicaprio\n           as\n calvin j. candie",10,200);
    text("samuel L. jackson\n           as\n       stephen",353,200);
 text("cast",270,60);
  mivariable = frameCount;
   fill(255, 255, 255);
  rect(250, 400, 150, 50);
  fill(0);
  text("Reiniciar", 250, 440);
  
  // Detectar clic en el botón
  if (mousePressed && mouseX > 250 && mouseX < 350 && mouseY > 400 && mouseY < 450) {
    // Reiniciar variables
    mivariable = 1;
    frameCount = 0;
    reiniciar = false;
  }
}
}
void mousePressed(){
   if (mousePressed && mouseX > 250 && mouseX < 350 && mouseY > 400 && mouseY < 450) {
     reiniciar = true;
   }
}
