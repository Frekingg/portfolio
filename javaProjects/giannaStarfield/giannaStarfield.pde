NormalParticle[] npArray;
OddballParticle[] opArray;
JumboParticle[] jpArray;

PImage earth;
PImage sun;
PImage moon;
void setup(){
    size(800,800);
    earth =loadImage("earth.png");
    earth.resize(100,100);
    sun =loadImage("sun.png");
    sun.resize(200,200);
    moon =loadImage("moon.png");
    moon.resize(50,50);
    
    npArray = new NormalParticle[500];
    for (int i = 0; i<npArray.length;i++){
      npArray[i] = new NormalParticle();
    }
     opArray = new OddballParticle[1];
    for (int i = 0; i<opArray.length;i++){
      opArray[i] = new OddballParticle();
    }
     jpArray = new JumboParticle[1];
    for (int i = 0; i<jpArray.length;i++){
      jpArray[i] = new JumboParticle();
    }
}
void draw(){
    background(0);
    for (int i = 0; i<npArray.length;i++){
    npArray[i].show();
    npArray[i].move();
    }
     for (int i = 0; i<opArray.length;i++){
    opArray[i].show();
    opArray[i].move();
    }
     for (int i = 0; i<jpArray.length;i++){
    jpArray[i].show();
    jpArray[i].move();
    }
    image(sun, 295, 295);

}
//class NormalParticle{
//   public void show() {
//   }
//   public void move();
   
//}
interface Particle{
   public void show();
   public void move();
}
//class OddballParticle //uses an interface
//{
////public void show();
////public void move();

//}
//class JumboParticle //uses inheritance
//{
//   public void show();
//   public void move();

//}
