class Bacteria{
  private int x = 475;
  private int y = 125;
  private int xVel;
  private int yVel;
  
  Bacteria(int x, int y){
    this.x=x;
    this.y=y;
    xVel=(int)(Math.random()*5+1);
    double k=Math.random();
    int yDir;
    if(k<0.5){
      yDir=-1;
    }else{
      yDir=1;
    }
    yVel=yDir*(int)(Math.random()*5+1);
    //this.col=col;
  }
  void move(){
    x+=xVel;
    y+=yVel;
   
  }
  void show(){
   fill(130,184,201,60);
    ellipse(x,y,40,40);

  }
   void reset(){
   x = 450;
   y = height/2;

}
 
}
