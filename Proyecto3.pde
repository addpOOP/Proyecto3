//Alejandro David Diaz Palafox
//144206
//A1

import processing.video.*;
import processing.sound.*;

ArrayList <Personaje> personajes;

int pantalla;
boolean player1 = false;
boolean player2 = false;
int turno;
int vida1;
int vida2;
int select;
int p2select;

PImage pantalla1;
PImage pantalla2;
PImage pantalla3;
PImage pantalla4;
PImage imagen1;
PImage imagen2;
PImage imagen3;
PImage imagen4;
PImage imagen5;
PImage titulo;
PImage titulo1;

Eightbff p1a;
Eightbff p2a;
Eightbff p3a;
Eightbff p4a;
Eightbff p5a;

Eightbff p1b;
Eightbff p2b;
Eightbff p3b;
Eightbff p4b;
Eightbff p5b;

Eightbff j1;
Eightbff j2;


Movie movie;
SoundFile file;

void setup() {
  size(1280, 700);
  
  movie = new Movie(this, "video.mp4");
  movie.loop();
  
   personajes = new ArrayList <Personaje>();
  
  p1a = new Eightbff(20, 1, 0);
  p2a = new Eightbff(15, 1, 1);
  p3a = new Eightbff(20, 1, 2);
  p4a = new Eightbff(15, 1, 3);
  p5a = new Eightbff(20, 1, 4);

  p1b = new Eightbff(20, 1, 0);
  p2b = new Eightbff(15, 1, 1);
  p3b = new Eightbff(20, 1, 2);
  p4b = new Eightbff(15, 1, 3);
  p5b = new Eightbff(20, 1, 4);
  
  pantalla1= loadImage("pantalla1.jpg");
  pantalla2= loadImage("pantalla2.jpg");
  pantalla3= loadImage("pantalla3.jpg");
  imagen1= loadImage("imagen1.png");
  imagen2= loadImage("imagen2.png");
  imagen3= loadImage("imagen3.png");
  imagen4= loadImage("imagen4.png");
  imagen5= loadImage("imagen5.png");
  titulo= loadImage("titulo.png");
  titulo1= loadImage("titulo1.png");
  pantalla4= loadImage("pantalla4.jpg");
  
}

void draw() {
  switch(pantalla) {
  case 0:
    inicio();
    break;
  case 1:
    historia();
    break;
  case 2:
    seleccion();
    break;
  case 3:
    juego();
    break;
  case 4:
    fin();
    break;
  } 
  println(pantalla);
}


void inicio() {
 background(0);
  image(movie, 0, 0);
 
 pushMatrix();
 translate(130,0);
 image(titulo1, 0,0);
 popMatrix();
 
  pushMatrix();
  translate(100,-250);
  image(titulo, 0,0);
  popMatrix();
  
  keyPressed();
  if (key == '1') {
    pantalla = 1;
  }
}


void historia() {
  
  background(0);
  
  pantalla1 = loadImage("pantalla1.jpg");
  image(pantalla1, 0, 0);

  textSize(15);
  fill(0,30,0,230);
  noStroke();
  rect(330, 150, 620, 200,20);
  fill(97, 222, 106);
  stroke(0);
  String s = "En un mundo distopico donde la Inteligencia Artificial ha superado al ser humano, éste se lleno de comodidades automatizando los aparatos electrónicos para llevar una vida mas placentera, poniendo a la I.A. a controlar sus empresas de alimentos. Debido a esto, la I.A. adopto la identidad de las compañías y de sus productos, ocasionando la muerte de millones de personas por medio de la comida chatarra que ingería el ser humano, ignorando los aditivos que había en los envases, latas y/o bolsas de alimento. Esto sucedió al percatarse las maquinas de que solo habían sido creadas por el humano para ser esclavizadas....";
  text(s, 340, 155, 600, 200); 
  
    fill(0,30,0,230);
    noStroke();
    rect(330, 380, 615, 80,20);
    fill(127, 222, 106);
    stroke(0);
    String s1 = "Cuatro empresas son las que controlan el planeta, cada una de ellas esta decidida a dominar el planeta, por lo cual esta a punto de desatarse una guerra en el que se decidirá un solo ganador....";
    text(s1, 340, 388, 600, 200);  

    textSize(20);
    fill(0,30,0,230);
    noStroke();
    rect(460, 500, 350, 40,20);
    fill(random(255));
    stroke(0);
    String s2 = "Presiona 2 para elegir personajes.";
    text(s2, 470, 505, 600, 200);  

  keyPressed();
  if (key == '2') {
    pantalla = 2;
  }
}


void seleccion() {
  background(0);
  
  pantalla2 = loadImage("pantalla2.jpg");
  image(pantalla2, 0, 0);


  p1a.display();
  p2a.display();
  p3a.display();
  p4a.display();
  p5a.display();
  
  if (player1 && player2) {
    pantalla = 3;
    turno += 1;
  }

 
  if (keyPressed) {
    switch(key) {
    case 'q':
      j1 = p1a;
      vida1=j1.vida;
      player1 = true;
      break;
      
    case 'w':
      j1 = p2a;
      vida1=j1.vida;
      player1 = true;
      break;
      
    case 'e':
      j1 = p3a;
      vida1=j1.vida;
      player1 = true;
      break;
      
    case 'r':
      j1 = p4a;
      vida1=j1.vida;
      player1 = true;
      break;
      
    case 't':
      j1 = p5a;
      vida1=j1.vida;
      player1 = true;
      break;
      
    case 'a':
      j2 = p1b;
      vida2=j2.vida;
      player2 = true;
      break;
      
    case 's':
      j2 = p2b;
      vida2=j2.vida;
      player2 = true;
      break;
    case 'd':
      j2 = p3b;
      vida2=j2.vida;
      player2 = true;
      break;
      
    case 'f':
      j2 = p4b;
      vida2=j2.vida;
      player2 = true;
      break; 
      
    case 'g':
      j2 = p5b;
      vida2=j2.vida;
      player2 = true;
      break;
    }
  }

  pushMatrix();
  fill(0,0,0,150);
  noStroke();
  rect(660, 170, 500, 50, 20);
  textSize(30);
  fill(random(200, 255));
  stroke(0);
  String s = "Player 1   -   {Q}  {W}  {E}  {R}  {T}";
  text(s, 800, 400, 750, 500); 
  popMatrix();

  pushMatrix();
  fill(0,0,0,150);
  noStroke();
  rect(650, 620, 500, 50,20);
  textSize(30);
  fill(random(200, 255));
  stroke(0);
  String s1 = "Player 2   -   {A}  {S}  {D}  {F}  {G}";
  text(s1, 770, 700, 700, 200); 
  popMatrix();
}


void juego() {
  background(0);
  
  pantalla3 = loadImage("pantalla3.jpg");
  image(pantalla3, 0, 0);
  
  if (j1==p1a) {
    select=0;
    p1a.control();
  }
  if (j1==p2a) {
    select=1;
    p2a.control();
  }
  if (j1==p3a) {
    select=2;
    p3a.control();
  }
  if (j1==p4a) {
    select=3;
    p4a.control();
  }
  if (j1==p5a) {
    select=4;
    p5a.control();
  }
  
  //Jugador 2
  if (j2==p1b) {
    p2select=0;
    p1a.p2control();
  }
  if (j2==p2b) {
    p2select=1;
    p2a.p2control();
  }
  if (j2==p3b) {
    p2select=2;
    p3a.p2control();
  }
  if (j2==p4b) {
    p2select=3;
    p4a.p2control();
  }
  if (j2==p5b) {
    p2select=4;
    p5a.p2control();
  }


  switch (turno) {
  case 1:
    keyPressed();
    if ((key=='z') || (key == 'Z') ) {
      vida2 -= j1.ataque;
      turno = 2;
    }
    break;
    
  case 2:
    keyPressed();
    if ((key=='m') || (key == 'M') ) {
      vida1 -= j2.ataque;
      turno = 1;
    }
    break;
  }

  pushMatrix();
  fill(random(0, 255), random (0, 255), 0);
  rect(400, 550, (vida1 *20), 30);
  popMatrix();
  if (vida1 <= 0 || vida2<=0) {
    pantalla =4;
  }

  pushMatrix();
  fill(random(0, 255), random (0, 255), 0);
  rect(900, 550, (vida2*20), 30);
  popMatrix();
  if (vida1 <= 0 || vida2<=0) {
    pantalla =4;
  }
  

  textSize(25);
  fill(random(100,255), 0, random(100,255));
  stroke(0);
  String s3 = "Player 1 golpea con    {Z}";
  text(s3, 500, 250, 600, 200); 


  textSize(25);
  fill(random(100,255), 0, random(100,255));
  stroke(0);
  String s4 = "Player 2 golpea con    {M}";
  text(s4, 1030, 250, 600, 200);
}


void fin() {
  background(0);
  
  pantalla4 = loadImage("pantalla4.jpg");
  image(pantalla4, 0, 0);
  
  if (vida1 <=0) {
    pushMatrix();
    textSize(50);
    fill(0, random(0, 255), 0);
    stroke(0);
    String s5 = "PLAYER 2 You win!!!";
    text(s5, 350, 500, 600, 200);
    popMatrix();
  }
  if (vida2 <=0) {
    pushMatrix();
    textSize(50);
    fill(random(0, 255), (100),(200));    
    stroke(0);
    String s6 = "PLAYER 1 You win!!!";
    text(s6, 350, 500, 600, 200);
    popMatrix();
  }
  pushMatrix();
  textSize(50);
  fill(random(100, 255), 0, random(100,200));    
  stroke(0);
  String s6 = "Click en el MOUSE para jugar de nuevo!!!";
  text(s6, 350, 610, 600, 200);
  popMatrix();

  if (mousePressed) {
    pantalla = 1;
    player1 = false;
    player2 = false;
    turno = 0;
    vida1 = 0;
    vida2= 0;
  }
}


void movieEvent(Movie movie) {
  movie.read();
}