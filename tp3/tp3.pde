//tp3
//comision 1
//mateo delgadino
//obra 24
//https://youtu.be/4MePGvEmImQ
PImage foto;
color c1 = color(128);
color c2 = color(0);
int tamañooriginal = 40;
int tamañocuadrado = tamañooriginal;
boolean cambiarcolores = false;

void setup(){ 
  size(800,400);
  foto=loadImage("foto.jpg");
}
void coloresrandom() {
   c1 = color(random(255), random(255), random(255));
   c2 = color(random(255), random(255), random(255));
}
 int calculartamaño(int tamaño) {
 return tamaño * 2;
}  
  void cambiartamaño(int nuevotamaño) {
    tamañocuadrado = nuevotamaño;
    if (tamañocuadrado > 100) {
      tamañocuadrado = 100;
    } else if ( tamañocuadrado < 10) {
      tamañocuadrado = 10;
    }
  }
void draw(){
  background(0);


 image(foto,0,0,width / 2, height);
 for ( int fila = 0; fila < 10; fila++) {
   int desplazamiento = ( fila % 2 == 0) ? 0 : tamañocuadrado / 2;
   for ( int columna = 0; columna < 10; columna++) {
     int x = width / 2 + columna * tamañocuadrado + desplazamiento;
     int y = fila * tamañocuadrado;
     if(cambiarcolores) {
       coloresrandom();
       cambiarcolores = false;
     }
     fill(((fila + columna)% 2 == 0) ? c1: c2);
  rect(x,y,tamañocuadrado,tamañocuadrado);
   }
 }
}
void mousePressed() {
  cambiarcolores = true;
}

void keyPressed(){
 if (key == 'm'  || key =='M') {
   c1 = color(128);
   c2 = color(0);
   tamañocuadrado = tamañooriginal;
 }else if (key == 'g') {
   
cambiartamaño ( tamañocuadrado + 5);
 }else if (key == 'f') {
cambiartamaño (tamañocuadrado -5);
 if (tamañocuadrado < 10) {
   }
 }
  if (tamañocuadrado > 100) {
    tamañocuadrado = 100;
 } else if (tamañocuadrado < 10) {
   tamañocuadrado = 10;
 }
}
  
