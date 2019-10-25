int startX = width/2;
int startY = 125;
int endX = width/2;
int endY = 0;
Rain rain;

PImage cloud;
PImage newcloud;
PImage tree2;

int size = 0;
int startTime;

float x = (float)Math.random()*width;
float y = (float)Math.random()*height;
float r = (float)Math.random()*10;
float speed=(float)(Math.random()*2)+1;

Rain[]myRain=new Rain[500];

void setup()
  {
    rain = new Rain();
        
  for(int i=0; i<myRain.length; i++){
    myRain[i]=new Rain();
  }
    tree2 = loadImage("tree2.png");
    tree2.resize(700,250);
    cloud = loadImage("cloud.png");
    cloud.resize(500,200);
    newcloud = loadImage("newcloud.png");
    newcloud.resize(700,250);
    strokeWeight(5);
    background(5);
    size(600, 600);
    

}

  
void draw()
{
  //fill(0,0,0,25);
  //rect(-10,-10,width +20, height + 20);
  background(0);  
 //fill(204,229,255);
  //rain.display();
   
  for(int i=0; i<myRain.length; i++){
    myRain[i].display();
  }
  
  int time = millis() - startTime;
   if(time>250){
   startTime = millis();
   //if (endX == 354 && endY == 400)
   //    background(55);
   //    rect(0,0,200,200);
   reset();
  }

 
  image(tree2,0,350);
  stroke(192,192,192);
 
    while (endY<height) {
    endX = startX + ((int)(Math.random()*19)-9);
    endY = startY + ((int)(Math.random()*10));
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
  //reset();
  image(cloud, 60, 0);
  image(newcloud, 0,0);
}
void reset(){
    startX = width/2;
    startY = 125;
    endX = width/2;
    endY = 0;
}


void mousePressed()
{
  startX = width/2;
  startY = 125;
  endX = width/2;
  endY = 0;
  
}
