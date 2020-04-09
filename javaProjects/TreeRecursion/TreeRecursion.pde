private double fractionLength = .8; 
private int smallestBranch = 10; 
private float branchAngle = .2; 
Bird bird = new Bird();
PImage fly;

public void setup() {   
  size(640,480);    
  //noLoop(); 
  fly = loadImage("Desktop/TreeRecursion/bird.png");
  fly.resize(300, 200);
} 
 void draw() {   
  
  background(181,212, 239);   
  stroke(77, 134, 90);
  drawBranches(width/2, height, 140, 90);
  fill(88,57,57);
  rect(295, 340, 50, 300);
  bird.show();
  bird.move();
 
}
 
public void drawBranches(float x,float y, float branchLength, float angle) {   
    if(branchLength>1){
      float x1 = x + branchLength * cos(radians(angle));
      float y1 = y - branchLength * sin(radians(angle));

        line(x, y, x1, y1);
        drawBranches(x1, y1, branchLength * 0.75, angle + 40);
        drawBranches(x1, y1, branchLength * 0.66, angle - 50);

    }
     
     
} 
