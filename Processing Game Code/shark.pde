class Shark
{
  
float x;
float y;


Shark()
{
  x = 900;
  y = random(150, 700); 
  
}

float getX(){
  return x;
}

float getY(){
  return y; 
}

void setX()
{
  x = x - 3;
}
  void drawS(){
  pushMatrix();
  translate(x,y);
  
  ellipseMode(RADIUS);
  fill(112, 114, 117);
  noStroke();
  ellipse(0,0, 100, 50); //body
  triangle(-30, -45, 0, -90, 30,-25); //top fin
  triangle(90, -5, 110, -55, 110,-5);// tail part 1
  triangle(70, -10, 120, 20, 110,-10); //tail part 
  
  //eye
  fill(0);
  ellipse(-75,-20, 5, 5);
  
  

  //teeth 
  fill(255);
  strokeWeight(0);
  triangle(-100, 5, -95, 15, -90, 5);
  triangle(-90, 5, -85, 15, -80, 5);
  triangle(-80, 5, -75, 15, -70, 5);
  popMatrix();
    
  }
  


  
  
}
