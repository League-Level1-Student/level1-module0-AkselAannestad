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
   height=0;
   newNumber();
 }
 
 if (height<50 && mouseX<randomNumber+30 && mouseX>randomNumber-30){
 
 }


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
