int size =0;
int startTime;
int startX=150;
int startY=0;
int endX=150;
int endY=0;
PImage pumpkinsmile;
PImage pumpkinangry;
boolean light = false;


void setup()
{
  size(600, 600);
  strokeWeight(5);
  pumpkinangry = loadImage("pumpkinmad.png");
  pumpkinangry.resize(150, 150);
  pumpkinsmile = loadImage("pumpkinsmile.png");
  pumpkinsmile.resize(200, 200);
}

void draw()
{
  fill(0, 0, 0, 25);
  rect(-10, -10, width+20, height+20);
  if (!light)
    image(pumpkinsmile, 200, 400);
  textSize(40);
  fill(#FF6828);
  text("Spooky Season", 150, 175);
  if (frameCount%90==0) {
    light=!light;
    println(light);
  }
  stroke(255, 255, 0);
  if (light) {
    textSize(40);
    fill(0);
    text("Spooky Season", 150, 175);
    while (endY<465) {
      float f = map(startX, 0, width, 10, -10);
      endY = startY + (int)(Math.random()*10);
      endX = startX + (int)(Math.random()*f);
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
      int time = millis() - startTime; 
      if (time > 10) {
        startTime =  millis();
        image(pumpkinangry, 220, 450);
      }
    }
  }

  reset();
}



void reset() {
  startX=(int)(Math.random()*width);
  startY=0;
  endX=150;
  endY=0;
}
