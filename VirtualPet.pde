
void setup(){
  size(500, 500);
 
}
void draw(){
  int headX = 250;
  int headY = 200;
  
  fill(0, 0, 0);
  ellipse(headX, headY, 200, 200);
  
  fill(255, 255, 255);
  noStroke();
  ellipse(headX+40, headY+40, 100, 150);
  ellipse(headX-40, headY+40, 100, 150);
  
  ellipse(headX, headY+100, 200, 250);
  
  ellipse(headX+50, headY+130, 250, 200);
  
  fill(0, 0, 0);
  ellipse(headX+30, headY+20, 10, 10);
  ellipse(headX-30, headY+20, 10, 10);
}
