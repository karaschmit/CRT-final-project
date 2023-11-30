class Player {
  float x;
  float y;
  int w = 50;
  int h = 50;
  int missedCars = 0;

  Player(float x, float y) {
    this.x = x;
    this.y = y;
  }

  void render() {
    fill(#AEEEFA);
    rect(x, y, w, h);
  }

  void move() {
    if (keyPressed) {
      if (keyCode == LEFT && x > 0) {
        x -= 7;
        
     
   } 
   if (keyCode == RIGHT && x > 0) {
        x += 7;
    }
  }
}
}
