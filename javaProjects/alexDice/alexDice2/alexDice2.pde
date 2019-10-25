Die die, die1, die2, die3, die4, die5, die6, die7, die8;
Die [] dice;
int total = 0;
int runningTotal = 0;

void setup()
{
  size(700, 700);
  noLoop();
  dice = new Die [16]; 
  for (int i = 0; i<4; i++) {
    for (int j=0; j<4; j++) {
      dice[i*4+j] = new Die(50+120*j, 50+120*i);
    }
  }
}

void draw()
{
  background(#FF7A9D);
  for(Die x : dice){
    x.show();
  }
}
void mousePressed()
{
  total = 0;
  redraw();
  for (int i = 0; i<4; i++) {
    for (int j=0; j<4; j++) {
      dice[i*4+j] = new Die(50+120*j, 50+120*i);
    }
  }
}

class Die //models one single dice cube
{
  //variable declarations here
  private int x;
  private int y;
  private int rand;
  
  Die(int x, int y) //constructor
  {
    this.x=x;
    this.y=y;
    rand = (int)(Math.random()*6)+1;
    total += rand;
    runningTotal += rand;
  }
  void roll()
  {

      
    //your code here
  }
  void show()
  {
    //text
    fill(150);
    textSize(25);
    text("Total: " + total, 50, 600);
    fill(150);
    text("Running Total: " + runningTotal, 50, 650);
    
    //dice
    fill(255, 255, 255);
    rect(x, y, 100, 100, 17);
   
      println(rand);
      if (rand==1) {
        fill(0, 0, 0);
        ellipse(x+50, y+50, 15, 15);
      }
      if (rand==2) {
        fill(0, 0, 0);
        ellipse(x+25, y+25, 15, 15); 
        ellipse(x+75, y+75, 15, 15);
      }
      if (rand==3) {
        fill(0, 0, 0);
        ellipse(x+25, y+25, 15, 15);
        ellipse(x+50, y+50, 15, 15); 
        ellipse(x+75, y+75, 15, 15);
      }
      if (rand==4) {
        fill(0, 0, 0);
        ellipse(x+25, y+25, 15, 15);
        ellipse(x+75, y+25, 15, 15); 
        ellipse(x+25, y+75, 15, 15);
        ellipse(x+75, y+75, 15, 15);
      }
      if (rand==5) {
        fill(0, 0, 0);
        ellipse(x+25, y+25, 15, 15);
        ellipse(x+75, y+25, 15, 15); 
        ellipse(x+25, y+75, 15, 15);
        ellipse(x+75, y+75, 15, 15);
        ellipse(x+50, y+50, 15, 15);
      }
      if (rand==6) {
        fill(0, 0, 0);
        ellipse(x+25, y+25, 15, 15);
        ellipse(x+75, y+25, 15, 15); 
        ellipse(x+25, y+75, 15, 15);
        ellipse(x+75, y+75, 15, 15);
        ellipse(x+25, y+50, 15, 15); 
        ellipse(x+75, y+50, 15, 15);
      }
    }
  }
