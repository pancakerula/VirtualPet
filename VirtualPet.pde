import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

public void setup() {
  size(500, 500);
  arduino = new Arduino(this, Arduino.list()[0], 57600); //change the [0] to a [1] or [2] etc. if your program doesn't work
}

public void draw() {
  background(192);

  
  int headX = 250;
  int headY = arduino.analogRead(5);


// FEET
  noStroke();
  fill(255,165,0);
  ellipse(headX+30, headY + 300, 50, 50); // feet
  ellipse(headX-30, headY + 300, 50, 50); // feet
  
// OUTER STOMACH
 
  fill(0, 0, 0);
  ellipse(headX, headY+100, 225, 300); // black upper outer stomach
  ellipse(headX, headY+150, 225, 300); // black lower outer stomach
  
// OUTER HEAD
  fill(0, 0, 0);
  ellipse(headX, headY, 200, 200); // black head

// INNER STOMACH
  fill(255, 255, 255);
  ellipse(headX, headY+130, 200, 300); // white stomach
   
// INNER HEAD  

  
  fill(255, 255, 255);
  ellipse(headX+40, headY+30, 100, 150); // white eyes
  ellipse(headX-40, headY+30, 100, 150); // white eyes
  
  fill(0, 0, 0);
  ellipse(headX+30, headY, 10, 10); // black eyes
  ellipse(headX-30, headY, 10, 10); // black eyes
  
  fill(255,165,0); 
  triangle(headX - 10, headY+20, headX + 10, headY+20, headX, headY+40); // orange beak
  
  
  
}
