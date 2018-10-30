class Eightbff implements Personaje{
  int vida;
  int ataque;
  int objeto;
  
  Eightbff(int vida_, int ataque_, int objeto_) {
    this.vida = 20;
    this.ataque = 3; 
    this.objeto = objeto_;
  
  }

void display() {

    switch(objeto) {
    case 0:
      pushMatrix();
      rectMode(CENTER);
      translate(100, 300);
      scale(0.06);
      noFill();
      noStroke();
      rect(0, 0, 50, 50);
      image(imagen1, -100, -190);
      popMatrix();
      break;
    case 1:
      pushMatrix();
      rectMode(CENTER);
      translate(300, 300);
      scale(0.055);
      noFill();
      noStroke();
      rect(0, 0, 50, 50);
      image(imagen2, -100, -190);
      popMatrix();
      break;
    case 2:
      pushMatrix();
      rectMode(CENTER);
      translate(550, 320);
      scale(0.09);
      noFill();
      noStroke();
      rect(0, 0, 50, 50);
      image(imagen3, -100, -190);
      popMatrix();
      break;
    case 3:
      pushMatrix();
      rectMode(CENTER);
      translate(820, 290);
      scale(0.06);
      noFill();
      stroke(53);
      rect(0, 0, 50, 50);
      image(imagen4, -100, -190);
      popMatrix();
      break;
    case 4:
     pushMatrix();
      rectMode(CENTER);
      translate(1050, 350);
      scale(0.07);
      noFill();
      stroke(12);
      rect(0, 0, 50, 50);
      image(imagen5, -100, -190);
      popMatrix();
      break;
    }
  }
  
  void control(){
    
      switch(select){
        case 0:
     pushMatrix();
      rectMode(CENTER);
      translate(300, 250);
      scale(0.06);
      noFill();
      noStroke();
      rect(0, 0, 50, 50); 
      image(imagen1, -100, -190);
      popMatrix();
      break;
      
      case 1:
       pushMatrix();
      rectMode(CENTER);
      translate(300, 250);
      scale(0.05);
      noFill();
      stroke(4);
      rect(0, 0, 50, 50);
      image(imagen2, -100, -190);
      popMatrix();
      break;
      
      case 2:
       pushMatrix();
      rectMode(CENTER);
      translate(300, 280);
      scale(0.08);
      noFill();
      stroke(0);
      rect(0, 0, 50, 50);
      image(imagen3, -100, -190);
      popMatrix();
      break;
      
      case 3:
       pushMatrix();
      rectMode(CENTER);
      translate(300, 250);
      scale(0.07);
      noFill();
      noStroke();
      rect(0, 0, 50, 50);
      image(imagen4, -100, -190);
      popMatrix();
      break;
      
      case 4:
      pushMatrix();
      rectMode(CENTER);
      translate(300, 270);
      scale(0.08);
      noFill();
      stroke(0);
      rect(0, 0, 50, 50);
      image(imagen5, -100, -190);
      popMatrix();
      break; 
        
      }
  }
  
  void p2control(){
    
      switch(p2select){
      case 0:
      pushMatrix();
      rectMode(CENTER);
      translate(850, 250);
      scale(0.06);
      stroke(0);
      rect(0, 0, 50, 50);
      image(imagen1, -100, -190);
      popMatrix();
      break;
      
      case 1:
      pushMatrix();
      rectMode(CENTER);
      translate(850, 250);
      scale(0.05);
      stroke(0);
      rect(0, 0, 50, 50);
      image(imagen2, -100, -190);
      popMatrix();
      break;
      
      case 2:
      pushMatrix();
      rectMode(CENTER);
      translate(850, 280);
      scale(0.08);
      stroke(0);
      rect(0, 0, 50, 50);
      image(imagen3, -100, -190);
      popMatrix();
      break;
      
      case 3:
      pushMatrix();
      rectMode(CENTER);
      translate(850, 250);
      scale(0.07);
      noFill();
      stroke(0);
      rect(0, 0, 50, 50);
      image(imagen4, -100, -190);
      popMatrix();
      break;
      
      case 4:
      pushMatrix();
      rectMode(CENTER);
      translate(850, 270);
      scale(0.08);
      noFill();
      stroke(0);
      rect(0, 0, 50, 50);
      image(imagen5, -100, -190);
      popMatrix();
      break;
  
      }
    
  }
} 