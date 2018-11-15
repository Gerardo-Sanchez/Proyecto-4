class Bobinas{
  
  float x,y;
  float dx;
  int contador = 0;
  float w = 30;
  float h = 160;
  
  boolean hit = false;
  
  PImage bobina;
  
  Bobinas(){
    this.x = width;
    this.y = height - 160;
    this.dx = x * -0.001;
    sx = width;
    sy = height - 160;
  }
  
  void mover(){
    this.x += this.dx;
    sx += this.dx;
    
    if(this.x<-30){
      this.x = width;
      this.dx = this.dx - 0.05;
      contador = contador + 1;
    }
    
    if(sx<-30){
      sx = width;
      this.dx = this.dx - 0.05;
    }
  }
  
  void checkCollision(Personaje personaje) {
    hit = circleRect(personaje.x,personaje.y,personaje.r, x,y,w,h);
  }
  
  void display(){
    
    if (hit) p = 3;
    else println(hit);
    
    noStroke();
    fill(255);
    image(b, x, y);
    
    stroke(3);
    noFill();
    rect(sx, sy, sw, sh);
  }
}

boolean circleRect(float cx, float cy, float radius, float rx, float ry, float rw, float rh) {

  // temporary variables to set edges for testing
  float testX = cx;
  float testY = cy;

  // which edge is closest?
  if (cx < rx)         testX = rx;      // compare left edge
  else if (cx > rx+rw) testX = rx+rw;   // right edge
  if (cy < ry)         testY = ry;      // top edge
  else if (cy > ry+rh) testY = ry+rh;   // bottom edge

  // get distance from closest edges
  float distX = cx-testX;
  float distY = cy-testY;
  float distance = sqrt( (distX*distX) + (distY*distY) );

  // if the distance is less than the radius, collision!
  if (distance <= radius) {
    return true;
  }
  return false;
}
