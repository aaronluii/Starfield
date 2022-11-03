Particle[] fun = new Particle[1000];
void setup()
{
  background(0,0,0);
  size(1000,1000);
  for(int i =0; i<fun.length;i++){
     fun[i]  = new Particle();
     fun[0] = new OddballParticle();
  }
}
void draw()
{
    background(0);
  for (int i=0;i<fun.length;i++){
    fun[i].move();
    fun[i].show();
  }
}
class Particle
{
  double myX,myY,myAngle,mySpeed;
  int myColor;
    Particle(){
    myX=myY=500;
    myAngle=Math.random()*100*Math.PI;
    mySpeed=Math.random()*10;
    myColor=color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  }
   void move(){
    myX+=Math.cos(myAngle)*mySpeed;
    myY+=Math.sin(myAngle)*mySpeed;
  }
  void show(){

    fill(myColor);
    ellipse((float)myX,(float)myY,20,20);
  }
}

class OddballParticle extends Particle//inherits from Particle
{
  OddballParticle(){
    myX=myY=235;
    myColor=color(#FFFFFF);
  }
  void move(){
    myX+=(int)(Math.random()*3)-1;
    myY+=(int)(Math.random()*3)-1;
  }
  void show(){
    noStroke();
    fill(myColor);
    ellipse((float)myX,(float)myY,40,40);
  }
}
