class Fish{
  
float x;
float y;

Fish()
{
  x = random(10,890);
  y = 0; 
  
}

float getX(){
  return x;
}

float getY(){
  return y; 
}

void setY(){
  y = y + 2; 
}
  
  
  void drawf(){
  pushMatrix();
  translate(x,y);
  rotate(radians(-90));
  scale(.5);
  ellipseMode(RADIUS);
  fill(232, 100, 18);
  noStroke();
  ellipse(0,0, 100, 50); //body
  triangle(90, -5, 110, -55, 110,-5);// tail part 1
  triangle(70, -10, 120, 20, 110,-10); //tail part 
  
  //eye
  fill(0);
  ellipse(-70,-20, 5, 5);
  popMatrix();
  //println("hello");
    
  }
  
  
}
