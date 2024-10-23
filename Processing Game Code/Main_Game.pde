
  
import ddf.minim.*;
//Minim minim;
//AudioPlayer player;

ArrayList<Fish> f; 
ArrayList<Shark> s; 
Penguin p;
Fish nemo;
Shark sharky;
boolean alive = true;
float size = 1.5;
int score = 0;
//PFont font;
boolean showScore = false;



void setup(){
  size(900,900);
  //background(20, 173, 165);
   p = new Penguin(255, size);
   f = new ArrayList<Fish>(); 
   s = new ArrayList<Shark>(); 
   f.add(new Fish());
   s.add(new Shark());
   //font = createFont("Orbitron-Black.ttf", 50);
   //textFont(font);
   //minim = new Minim(this);
  // player = minim.loadFile("Renegade.mp3");
   //player.play();
   printArray(Serial.list());
   String portName = Serial.list()[7];
   println(portName);
   myPort = new Serial(this, portName, 9600); // ensure baudrate is consistent with arduino sketch
   
   
}


void restart(){
  background(20, 173, 165);
  alive = true;
  size = 1.5;
  score =0;
  ArrayList<Fish> fr; 
  ArrayList<Shark> sr; 
  fr = new ArrayList<Fish>(); 
  sr = new ArrayList<Shark>(); 
  fr.add(new Fish());
  sr.add(new Shark());
  
  
  int m = millis();
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
    int poVal = xyz[4] +1;
    int bVal = xyz[3];
  
 
    if(alive && millis()> 5000){
     
      p.drawP(size);
      frameRate(map(millis(), 0, 60000, 50, 80));
      if (m % 4000 < 1000/frameRate)
      {
        fr.add(new Fish());
      }
      
        for (int c = 0; c < fr.size(); c++)
        {
          nemo = fr.get(c);
          nemo.setY();
          nemo.drawf();
          
          float dist;
          if (nemo.getY() < penguinY && nemo.getY() > penguinY-65)
            dist = abs(penguinX-nemo.getX());
          else if (nemo.getY() > penguinY-35)
            dist = sqrt(pow(nemo.getX()-penguinX,2) + pow(nemo.getY()-penguinY+35, 2));
          else    
            dist = sqrt(pow(nemo.getX()-penguinX,2) + pow(nemo.getY()-penguinX+65, 2));
          if (dist < 35)
          {
            fr.remove(c);
            score++;
          }
       }
       
      if(m % poVal < 1000/frameRate)
      {
        sr.add(new Shark());
      }
        int i = 0;
        while (i < sr.size())
        {
          sharky = sr.get(i);
          sharky.setX();
          sharky.drawS();
          
          float dist;
          if (sharky.getY() < penguinY && sharky.getY() > penguinY-65)
            dist = abs(penguinX-(sharky.getX()-50));
          else if (sharky.getY() > penguinY-35)
            dist = sqrt(pow((sharky.getX() -50)-penguinX,2) + pow(sharky.getY()-penguinY+35, 2));
          else    
            dist = sqrt(pow((sharky.getX()-50)-penguinX,2) + pow(sharky.getY()-penguinY+65, 2));
          if (dist < 35)
          {
            alive = false;
          }
          i++;
        }
        
        
       
    }
      else if(!alive) {
        p.drawP(size);
        frameRate(200);
        size = size * 0.95;
        textAlign(CENTER);
        fill(32, 10, 155);
        textSize(72);
        text("GAME OVER", 450,350);
        textSize(24);
        text("SCORE : " + score, 450,200); 
        text("PRESS THE BUTTON TO RESTART", 450,450);
        if(bVal == 0)
        {
          restart();
        }
        
        
        
    }
  }
}

void draw(){
  background(20, 173, 165);
  
  int m = millis();
  
 if(millis()< 5000){
  textAlign(CENTER);
  fill(32, 10, 155);
  textSize(35);
  text("Help the penguin eat the fish\nwithout getting eatten by the sharks!", 450,350);
 }
 
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
    int poVal = xyz[4]+1;
    int bVal = xyz[3];
  
 
    if(alive && millis()> 5000){
     
      p.drawP(size);
      frameRate(map(millis(), 0, 60000, 50, 80));
      if (m % 4000 < 1000/frameRate)
      {
        f.add(new Fish());
      }
      
        for (int c = 0; c < f.size(); c++)
        {
          nemo = f.get(c);
          nemo.setY();
          nemo.drawf();
          
          float dist;
          if (nemo.getY() < penguinY && nemo.getY() > penguinY-65)
            dist = abs(penguinX-nemo.getX());
          else if (nemo.getY() > penguinY-35)
            dist = sqrt(pow(nemo.getX()-penguinX,2) + pow(nemo.getY()-penguinY+35, 2));
          else    
            dist = sqrt(pow(nemo.getX()-penguinX,2) + pow(nemo.getY()-penguinX+65, 2));
          if (dist < 35)
          {
            f.remove(c);
            score++;
          }
       }
       
      if(m % poVal < 1000/frameRate)
      {
        s.add(new Shark());
      }
        int i = 0;
        while (i < s.size())
        {
          sharky = s.get(i);
          sharky.setX();
          sharky.drawS();
          
          float dist;
          if (sharky.getY() < penguinY && sharky.getY() > penguinY-65)
            dist = abs(penguinX-(sharky.getX()-50));
          else if (sharky.getY() > penguinY-35)
            dist = sqrt(pow((sharky.getX() -50)-penguinX,2) + pow(sharky.getY()-penguinY+35, 2));
          else    
            dist = sqrt(pow((sharky.getX()-50)-penguinX,2) + pow(sharky.getY()-penguinY+65, 2));
          if (dist < 35)
          {
            alive = false;
          }
          i++;
        }
        
        
       
    }
    else if(!alive) {
      p.drawP(size);
      frameRate(200);
      size = size * 0.95;
      textAlign(CENTER);
      fill(32, 10, 155);
      textSize(72);
      text("GAME OVER", 450,350);
      textSize(24);
      text("SCORE : " + score, 450,200); 
      text("PRESS THE BUTTON TO RESTART", 450,450);
      if(bVal == 0)
      {
        restart();
      }
      
      
      
  }
}



  
}
