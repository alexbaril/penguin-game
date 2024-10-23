class Particle {
  
  float x;
  float y;
  float xspeed;
  float yspeed;
  
  Particle() {
    x = mouseX;
    y = mouseY;
    xspeed = random(-1,1);
    yspeed = random(-2,0);
  }
  
  void run() {
    x = x + xspeed;
    y = y + yspeed;
  }
  
  void gravity() {
    yspeed += 0.1;
  }
  
  void display() {
    pushMatrix();
    translate(x,y);
    scale(.3);
    strokeWeight(3);
    stroke(255,0,0);
    fill(255);
    ellipse(0,0,40,40);
    popMatrix();
  }
}
