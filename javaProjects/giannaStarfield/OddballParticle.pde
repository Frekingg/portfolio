class OddballParticle implements Particle{
 float x, y, angle, speed;
 int test = 0;
 
 
 OddballParticle(){
   x = 0;
   y = 0;
   speed = 13;
   //speed = (float)Math.random()*15;
   angle = (float)((Math.PI*2)*Math.random());
 }
 public void move(){
   x+= Math.cos(angle) * speed;
   y+= Math.sin(angle) * speed;
   //angle += .047;
    angle += .047;
    

 
 if (x>650){
   x = 650;
   }
   else if(x<70){
     x = 70;
   }
   
   if (y>650){
   y = 650;
   }
   else if(y<70){
     y = 70;
   }
 }
 
 public void show(){
   noStroke();
   if(test == 0){
     //randColor();
     test = 200;
   }
     test--;
     println(test);
     image(earth, x, y);

     //colorMode(HSB);
     //fill(r, g, b);
     //ellipse((int)x, (int)y, 30, 30);
 }

 
}
