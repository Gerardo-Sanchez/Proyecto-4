class Personaje{
  
  float a = random(6);
  float x;
  float y;
  float r = 100;
  
  Personaje(){
  }
  
  void display(){
    //scale(2);
      opencv.loadImage(video);
    
      image(video, 0, 0 );
      
      
      pushMatrix();
      scale(1);
      image(pj, 0, 0);
      popMatrix();
    
      noFill();
      stroke(0, 255, 0);
      strokeWeight(3);
      Rectangle[] faces = opencv.detect();
    
      for (int i = 0; i < faces.length; i++) {
        ellipseMode(CORNER);
        ellipse(faces[i].x, faces[i].y, r, r);
        
        println(a);
        
        if(a <= 1) image(c1, faces[i].x, faces[i].y);
        if(a > 1 && a <= 2) image(c2, faces[i].x, faces[i].y);
        if(a > 2 && a <= 3) image(c3, faces[i].x, faces[i].y);
        if(a > 3 && a <= 4) image(c4, faces[i].x, faces[i].y);
        if(a > 4 && a <= 5) image(c5, faces[i].x, faces[i].y);
        if(a > 5 && a <= 6) image(c6, faces[i].x, faces[i].y);
        
        x = faces[i].x;
        y = faces[i].y;
      }
  }
}
