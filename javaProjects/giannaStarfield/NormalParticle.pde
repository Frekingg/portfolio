class NormalParticle implements Particle{
 double x, y, angle, speed;
 int test =0;
 
 NormalParticle(){
   x = width/2;
   y = height/2;
   speed = Math.random()*7;
   angle = (Math.PI*2)*Math.random();
 }
 public void move(){
   x+= Math.cos(angle) * speed;
   y+= Math.sin(angle) * speed;
   //angle += .047;
   angle += .02;
 
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
   //  randColor();
   //  test = 200;
   //}
     //test--;
     //println(test);
     //colorMode(HSB);
     fill(255, 90);
     ellipse((int)x, (int)y, 8, 8);
 }
 
 
}
