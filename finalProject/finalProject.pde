Player player;
ArrayList<Enemy> enemies;
Road r1;
Road r2;
Road r3;
 

void setup() {
  size(800, 800);
  player = new Player(width/2, height - 50);
  enemies = new ArrayList<Enemy>();
  
  r1 = new Road(175, 0, 0);
  r2 = new Road(400, 0, 0);
  r3 = new Road(625, 0, 0);
}

void draw() {
  background(0);
  
  r1.render();
  r1.move();
  r1.reset();
  
  r2.render();
  r2.move();
  r2.reset();
  
  r3.render();
  r3.move();
  r3.reset();
  

  
  
  // create new enemies
  if (random(100) < 7) {
    enemies.add(new Enemy());
  }
  
  // update player and enemies
  player.move();
  for (int e = enemies.size() - 1; e >= 0; e--) {
    Enemy enemy = enemies.get(e);
    enemy.update();
    
    // Check for collisions
    if (enemy.collision(player)) {
      enemies.remove(e);
    }
  }
  
  // Keep enemies on the screen
  for (int e = enemies.size() - 1; e >= 0; e--) {
    Enemy enemy = enemies.get(e);
    if (enemy.y > height) {
       player.missedCars++;
      enemies.remove(e);
    }
  }
  
  // Render player and enemies
  player.render();
  for (Enemy enemy : enemies) {
    enemy.render();
  }
  
  // Display missed cars count
  fill(255);
  textSize(20);
  text("Score: " + player.missedCars, 20, 30);
}
