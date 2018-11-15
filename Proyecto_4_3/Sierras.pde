class Sierras{
  
  float x,y;
  float dx;
  float a;
  int contador = 0;
  
  PImage sierra;
  
  Sierras(){
    this.x = width;
    this.y = 0;
    this.dx = x * -0.001;
  }
  
  void mover(){
    this.x += this.dx;
    
    if(this.x<-50){
      this.x = width;
      this.dx = this.dx - 0.05;
      contador = contador + 1;
      a = random(140, 190);
    }
  }
  
  void display(){
    noStroke();
    fill(255);
    image(s, x, y, 30, a);
  }
}
