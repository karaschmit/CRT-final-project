class Road{
  float x;
  int y;
  float w;
  float h;
  
  color c;
  
  int xSpeed;
  float ySpeed;
  
  Road(int startingX, int startingY, int startingXSpeed){
    x=startingX;
    y=startingY;
    xSpeed=startingXSpeed;
    ySpeed=3;
    w=20;
    h=40;
    c=color(#E2E33C);
  }
  void render(){
    fill(c);
    rect(x,y,w,h);
    rect(x,y+100,w,h);
    rect(x,y+200,w,h);
    rect(x,y+300,w,h);
    rect(x,y+400,w,h);
    rect(x,y+500,w,h);
    rect(x,y+600,w,h);
    rect(x,y+700,w,h);


    
  }
  void move(){
    x+=xSpeed;
    y+=ySpeed;
  }
  void reset(){
    if (y+700>=height){
      y=0;
    }
  }
}
