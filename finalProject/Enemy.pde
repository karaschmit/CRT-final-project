class Enemy {
  float x;
  float y;
  int w = 50;
  int h = 100;
  

  Enemy() {
    this.x = random(0,width);
    this.y = 0;
  }

  void render() {
    fill(color(255,255,255));
    rect(x, y, w, h);
  }

  void update() {
    y += 7;
  }

  boolean collision(Player player) {
    return 
           x < player.x + player.w &&
           x + w > player.x &&
           y < player.y + player.h &&
           y + h > player.y;
  }
}
