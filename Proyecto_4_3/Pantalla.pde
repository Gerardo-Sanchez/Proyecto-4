class Pantalla{
  
  Obstaculos obstaculos;
  
  Pantalla(){
    obstaculos = new Obstaculos();
  }
  
  void display(){
    if(p == 0){
      image(pt, 0, 0);
      
      textFont(f1);
      textSize(100);
      text("HeaD-OuT", 40, 110);
      textSize(30);
      text("Presiona A para continuar", 40, 160);
      video.stop();
    }
    if(p == 1){
      image(ptu, 0, 0);
      video.start();
    }
    if(p == 2){
      pushMatrix();
      personaje.display();
      popMatrix();
      
      pushMatrix();
      obstaculos.display();
      popMatrix();
    }
    if(p == 3){
      video.stop();
      image(pf, 0, 0);
      fill(255);
      textFont(f1);
      textSize(100);
      text("Este es tu fin...", 175, 80);
      textFont(f3);
      textSize(100);
      text(obstaculos.puntaje, 300, 200);
      textFont(f2);
      textSize(80);
      fill(70);
      text("BASURA", 270, 410);
    }
  }
  
}
