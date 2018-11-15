//Detector de colisiones hecho por Matt Worden y con ayuda de la siguiente página web: http://www.jeffreythompson.org/collision-detection/table_of_contents.php

import gab.opencv.*;
import processing.video.*;
import java.awt.*;

Capture video;
OpenCV opencv;

Pantalla pantallas;
Obstaculos obstaculos;
Personaje personaje;

int p = 0;

float sx = 0;
float sy = 0;
float sw = 30;
float sh = 160;

PImage pt;
PImage ptu;
PImage pj;
PImage pf;
PImage b;
PImage s;

PImage c1;
PImage c2;
PImage c3;
PImage c4;
PImage c5;
PImage c6;

PFont f1;
PFont f2;
PFont f3;

void setup() {
  size(640, 480);
  video = new Capture(this, 640, 480);
  opencv = new OpenCV(this, 640, 480);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  
  
  pantallas = new Pantalla();
  obstaculos = new Obstaculos();
  personaje = new Personaje();
  
  pt = loadImage("Pantalla de Título [Head out].png");
  ptu = loadImage("Pantalla de Tutorial [Head out].png");
  pj = loadImage("Pantalla de Juego [Head out].png");
  pf = loadImage("Pantalla de Final[Head out].png");
  b = loadImage("Bobina.png");
  s = loadImage("Sierra.png");
  
  c1 = loadImage("Head1.png");
  c2 = loadImage("Head2.png");
  c3 = loadImage("Head3.png");
  c4 = loadImage("Head4.png");
  c5 = loadImage("Head5.png");
  c6 = loadImage("Head6.png");
  
  
  f1 = loadFont("Latchboy-150.vlw");
  f2 = loadFont("NeedleteethRegular-100.vlw");
  f3 = loadFont("NeedleteethCreepy-150.vlw");
}

void draw() {
  pantallas.display();
}

void captureEvent(Capture c) {
  c.read();
}

void keyPressed () {
  if (key == 'a' || key == 'A'){
    p = p+1;
    }
}
