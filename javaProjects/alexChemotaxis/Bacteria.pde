
class Bacteria {
  PImage bee;
  private float x;
  private float y;

  //private int startTime;

  Bacteria(float x, float y) {
    this.x = x;
    this.y = y;
    xspeed=-.9;
    yspeed=2;
    bee = loadImage("beepic.png");
    bee.resize(50, 50);
  }

  void move() {

    x-=(int)(Math.random()*5)-2;
    y+=(int)(Math.random()*5)-2;
    x+=xspeed;
    y+=yspeed;
    if (x<40) {
      xspeed*=-1;
    }
    if (y>400) {
      yspeed*=-1;
    }
    if (x>400) {
      xspeed*=-1;
    }
    if (y<40) {
      yspeed*=-1;
    }
    if (x<100||y>400) {
      xspeed=0;
      yspeed=0;
      x--;
    }
  }
  float getX() {
    return x;
  }
  float getY() {
    return y;
  }

  void setXSpeed() {
    xspeed*=-1;
  }

  void setYSpeed() {
    yspeed*=-1;

  }

  void show() {
    image(bee, x, y);
    fill(255);
    textSize(15);
    text("buzz", x, y);
  }
  void reset() {
    image(bee, 460, 170);
  }
}
