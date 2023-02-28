Ball ball;
Paddle p1;
Paddle p2;
int p1Score = 0;
int p2Score = 0;
int speed = 10;
float hue;

void setup(){
  size(800,600);
  colorMode(HSB);
  textAlign(CENTER);
  textSize(32);
  fill(255);
  stroke(255);
  ball = new Ball(width/2, height/2, -10,-10);
  p1 = new Paddle(50,height/2);
  p2 = new Paddle(width-50,height/2);
}

void draw(){
  background(hue,255,255);
  ball.update();
  ball.show();
  
  p1.update(mouseY);
  p2.update(ball.pos.y);
  p1.show();
  p2.show();

  
  text(str(p1Score) + " - " +  str(p2Score), width/2,50);
  
  hue = (hue+0.1)%255;
}
