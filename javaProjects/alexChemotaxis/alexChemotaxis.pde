Bacteria [] b = new Bacteria[5];
PImage nest;
PImage flower1;
PImage flower2;
PImage flower3;
PImage flower4;
int startTime;
boolean on = true;
float xspeed;
float yspeed;

void setup() {
  size(600, 500);
  resetSketch();
}

void draw() {
  background(0);
  image(nest, 350, 0);
  image(flower1, 70, 400);
  image(flower2, 70, 300);
  image(flower3, 30, 350);
  image(flower4, 110, 350);

  if (on==true) {
    for (int i=0; i<b.length; i++) {
      b[i].show();
      b[i].move();
    }
  }
  int time = millis() - startTime;
  if (time > 25) {
    startTime = millis();
    //resetSketch();
  }
}

void resetSketch() {
  nest = loadImage("beesNest.png");
  nest.resize(300, 250);
  flower1 = loadImage("sunflower2.png");
  flower1.resize(100, 100);
  flower2 = loadImage("sunflower2.png");
  flower2.resize(100, 100);
  flower3 = loadImage("sunflower2.png");
  flower3.resize(100, 100);
  flower4 = loadImage("sunflower2.png");
  flower4.resize(100, 100);

  for (int i=0; i<b.length; i++) {
    b[i]=new Bacteria(460, 170);
  }
}
void mousePressed() {
  on=!on;
  resetSketch();
  this.xspeed*=-1;
  this.yspeed*=-1;
}
