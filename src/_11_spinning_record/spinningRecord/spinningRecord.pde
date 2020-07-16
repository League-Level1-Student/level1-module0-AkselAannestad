import ddf.minim.*;
Minim minim;  
AudioPlayer song;  
PImage pictureOfRecord;
int angle;

void setup(){
  size(600,600);
  pictureOfRecord=loadImage("record.png");
  pictureOfRecord.resize(600,600);

  minim = new Minim(this);
  song = minim.loadFile("awesomeTrack.mp3", 512); 
  int angle=5;
}

void draw(){
  if(mousePressed){
  rotateImage(pictureOfRecord, angle);
  image(pictureOfRecord, 0, 0);  
  angle=angle+15;
  song.play();
  }
  else{song.pause();}

  
  
  
}
  void rotateImage(PImage image, int amountToRotate) {
        translate(width/2, height/2);
        rotate(amountToRotate*TWO_PI/360);
        translate(-image.width/2, -image.height/2);
    }
