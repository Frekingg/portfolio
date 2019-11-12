Bacteria [] b = new Bacteria[25];

PImage wand;
PImage smile;
PImage face;
int startX = 475;
int startY = 125;
int endX = 1000;
int endY = 0;
int startTime;
float speed=(float)(Math.random()*2)+1;
boolean blo = false;
int t=0;
int t2 =0;

void setup()   
{     
  size(800, 500);
  for (int i = 0; i<b.length; i++) {
    b[i] =new Bacteria (450, height/2);
  }
  wand =loadImage("wand.png");
  wand.resize(100, 250);
  smile=loadImage("smile2.png");
  smile.resize(200, 200);
  face = loadImage("oface.png");
  face.resize(200, 200);
}   
//void mousePressed() {
//  blo=true;
//}


void draw()   
{  
  background(0);
  if (!blo){
    t2++;
    if(t2>80){
      t2 = 0;
      blo=true;
    }
  }
  if (blo) {
    image(face, 125, 125);
    for (int i = 0; i<b.length; i++) {
      b[i].show();
      b[i].move();
    }
     t++;
  if (t>100) {
    t=0;
    for (int i = 0; i<b.length; i++) {
      b[i].reset();
    }
    blo=false;
  }
  }

  image(wand, 400, 250);
  if(!blo)
  image(smile, 125, 125);
  
}
