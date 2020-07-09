int height;

void setup(){
  size(1000,600);
}
void draw(){
  if (height==600){height=0;}
  background(125,125,125);
   fill(0,0,255);
  stroke(0,0,255);
    int randomNumber = (int) random(width);
   ellipse(randomNumber,height,20,50);
    height=height+3;
 
 //Raindrop moves down the screen and moves back up once it reacehs the botom. 
 //The raindrop won't fall in a straight line, because it's x is controlled by a random number, which is 
 //constantly changed due to draw method running over and over again.
 }
