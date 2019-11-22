class JumboParticle extends OddballParticle{
 float a = x;
 float b = y;

 //int test =0;
 
 JumboParticle(){
   //x = 0;
   //y = 0;
   speed = (float)(Math.random()*200);
   angle = (float)((Math.PI*2)*Math.random());
 }
 public void move(){
   a = (float)Math.cos(angle) * speed + opArray[0].x;
   b = (float)Math.sin(angle) * speed + opArray[0].y ;
   //angle += .047;
    angle += .07;

 
 //if (x>670){
 //  x = 670;
 //  }
 //  else if(x<70){
 //    x = 70;
 //  }
   
 //  if (y>670){
 //  y = 670;
 //  }
 //  else if(y<70){
 //    y = 70;
 //  }
 }
 
 public void show(){
   noStroke();
   //if(test == 0){
   //  test = 200;
   //}
     //test--;
     //println(test);
     //colorMode(HSB);
     //fill(255, 90);
     //ellipse((int)x, (int)y, 8, 8);
     image(moon, a,  b);
 }
 
}
