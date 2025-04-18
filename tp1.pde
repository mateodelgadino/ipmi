int  px, py;
PImage P;

void setup(){ 
  
size(800,400);
background(42,229,73);
fill(73,189,250);
rect(400,0,400,100);//cielo
fill(150);

circle(459,320,130);//piedra mediana
rect(400,300,200,400);//piedra mediana

circle(619,200,200);//piedra grande
rect(520,200,200,300);//piedra grande


circle(745,360,51);//piedra
rect(720,349,50,50);//piedra


fill(132,70,40);
triangle(650,115,650,80,717,82);//nariz
rect(550,50,100,300);//torso
fill(175,94,32);
rect(560,150,80,200);//interior torso
fill(125,70,40);
rect(530,30,20,310);//cola
fill(124,82,36);
circle(540,25,20);//punta de la cola
fill(20);
circle(715,83,15);//punta nariz

fill(167,100,78);
rect(650,140,20,150);//brazo derecho
rect(400,140,150,20);//brazo izq
fill(44,20,1);
rect(530,60,20,10);//interior de la cola
rect(530,120,20,10);
rect(530,190,20,10);
rect(530,240,20,10);
rect(530,290,20,10);
rect(530,340,20,10);




fill(62,33,11);
circle(582,80,30);//ojo izquierdo
circle(610,80,30);//ojo derecho
fill(255);
circle(582,80,20);//contornos ojo
circle(610,80,20);//contornos ojo

fill(0);
circle(582,80,5);//pupilas
circle(610,80,5);//pupilas

fill(144,71,47);
rect(630,350,20,300);//pierna derecha
rect(550,350,20,300);//pierna izquierda


fill(131,68,46);
ellipse(564,45,25,32);//cabello
ellipse(589,45,25,29);
ellipse(615,45,25,27);
ellipse(640,45,25,27);

line(570,120,620,120);//boca
line(565,130,570,120);//boca izquierda
line(625,130,620,120);//boca derecha
line(width/2,0,width/2,height);

P =loadImage("rigby.jpg");



P.resize(400,400);
}

void draw(){
  
  image(P,0,0);
}
