class Obstaculos{
  Bobinas bobinas;
  Sierras sierras;
  int puntaje = 0;
  
  Obstaculos(){
    bobinas = new Bobinas();
    sierras = new Sierras();
  }
  
  void display(){
    fill(255);
    bobinas.display();
    bobinas.mover();
    bobinas.checkCollision(personaje);
    puntaje = sierras.contador + bobinas.contador;
    
    if(bobinas.contador >= 0){
      sierras.display();
      sierras.mover();
    }
  }
}
