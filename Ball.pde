class Ball{
  PVector pos;
  PVector vel;
  float radius = 15;
  
  Ball(float x, float y, float vx, float vy){
    pos = new PVector(x,y);
    vel = new PVector(vx,vy);
  }
  
  void update(){
    pos.add(vel);
    
    //wall colission
    if((pos.y - radius <= 0)||(pos.y + radius >= height)){
      vel.y *= -1;
    }
    
    //paddles
    if( (pos.x - radius <= p1.x + p1.wid)&&( (pos.y >= p1.y - p1.hei)&&(pos.y <= p1.y + p1.hei) ) ){
      vel.x *= -1;
    }
    
    if( (pos.x + radius >= p2.x - p2.wid)&&( (pos.y >= p2.y - p2.hei)&&(pos.y <= p2.y + p2.hei) ) ){
      vel.x *= -1;
    }
    
    if(pos.x-radius <= 0){
      p2Score++;
      ball = new Ball(width/2, height/2, speed,speed);
    }
    
    if(pos.x+radius >= width){
      p1Score++;
      ball = new Ball(width/2, height/2, -speed,-speed);
    }
  }
  
  void show(){
    circle(pos.x,pos.y,radius*2);
  }
  
}
