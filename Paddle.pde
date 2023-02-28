class Paddle{
  float x;
  float y;
  float wid = 10;
  float hei = 100;
  
  
  Paddle(float X, float Y){
    x = X;
    y = Y;
  }
  
  void update(float Y){
    if(Y < hei/2){
      Y = hei/2;
    }else if(Y > height-hei/2){
      Y = height - hei/2; 
    }
    y = Y;
  }
  
  void show(){
    rect(x-wid/2, y-hei/2, wid,hei);
  }
  
  
  
}
