public class Rain{

  float x = (float)Math.random()*width + 10;
  float y = (float)(Math.random()*height)+150;
  float r = (float)Math.random()*2;
  float speed=(float)(Math.random()*2)+1;
  
  public Rain(){
  }

  public void display(){
   fill(255);
   ellipse(x, y, r, r);
   y+=speed;
   if(y > height){
     y = 150;
     x = (float)Math.random()*width +10;
   }
  }
}
