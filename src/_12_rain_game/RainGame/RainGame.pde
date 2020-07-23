int height;
int score;
int randomNumber;
void setup(){
  size(1000,600);
newNumber();
}
void draw(){

  background(125,125,125);
   fill(0,0,255);
   stroke(0,0,255);
   ellipse(randomNumber,height,20,50);
    
    fill(100,100,100);
    stroke(100,100,100);
rect (mouseX,550, 40,50);
    height=height+3;
    
 if (height==600){
   checkCatch(randomNumber);
   height=0;
   newNumber();
 }
 

 
 fill(0, 0, 0);
    textSize(16);
    text("Score: " + score, 20, 20);


}
 void newNumber(){
   randomNumber=(int) random(width);
 }
 
   void checkCatch(int x){
         if (x > mouseX && x < mouseX+100)
            score++;
         else if (score > 0) 
            score--;
        println("Your score is now: " + score);
    }
