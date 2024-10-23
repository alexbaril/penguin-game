import processing.serial.*;
Serial myPort;  // Create object from Serial class
String val;      // Data received from the serial port
int canvasSize = 900;
int analogMax = 4095;

class Penguin
{
int c;
int cc;
int ccc;
float size;

Penguin(int c1, float s)
{
  c = c1;
  size = s;
}


void drawP(float s){
  if ( myPort.available() > 0) {  // If data is available,
    val = myPort.readStringUntil('\n');         // read it and store it in val
  }
  val = trim(val);
  println(val);
  int[] xyz = int(split(val, ','));
 
  // use if statement to check serial input length to prevent ArrayIndexOutOfBounds errors
  if (xyz.length == 5) {
    int x = xyz[0];
    int y = xyz[1];
    
    float penguinX = map(x, 0, analogMax, 0, canvasSize);
    float penguinY = map(y, 0, analogMax, 0, canvasSize);
  
    pushMatrix();
    translate(penguinX, penguinY);
    scale(s); // Set the size
    stroke(0); // Set the color value
    strokeWeight(70);
    line(0, -35, 0, -65); // Body
    noStroke();
    fill(255);
    scale(.5);
    ellipse(0, -125, 66, 58);  
    fill(51, 51, 30);
    ellipse(-14, -125, 8, 8); // Left eye
    ellipse(14, -125, 8, 8);  // Right eye
    fill(244, 140, 66);
    triangle(-2, -110, 6, -110, 2, -115); // Beak
    popMatrix();
  }
}

boolean location(){
  println("The x cordinate is " + mouseX + " and the y cordinate is " + mouseY);
  return true;
}

}
