float x;
float y;
boolean ran;
void setup(){
  size(600,600);
  background(0,0,0);

}
void draw(){
  makeMagical();
   for(int i =0; i<300; i++){
  fill(frameCount,i,0);
    ellipse(getWormX(i),getWormY(i),5,5);
    if(i==300){ran=true;}
    x=x+2;
    y=y+2;
    if(ran=true){
    
    
  }

  
}}
 float frequency = .001;
    float noiseInterval = PI;

    void makeMagical() {
        fill( 0, 0, 0, 10 );
        rect(0, 0, width, height);
        noStroke();
    }

    float getWormX(int i) {
        return map(noise(i*noiseInterval + frameCount * frequency), 0, 1, 0, width);
    }

    float getWormY(int i) {
        return map(noise(i*noiseInterval+1 + frameCount * frequency), 0, 1, 0, height);
    }
