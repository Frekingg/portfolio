Die die, die1, die2, die3, die4, die5, die6, die7, die8;
int count1= 0;
int count2= 0;
int count3= 0;
int count4= 0;
int count5= 0;
int count6= 0;
int roll= 1;
int startTime;
Die [] dice;
int total = 0;
int runtotal = 0;
double avg = total;



void setup()
{
  size(500,500);
  //noLoop();
  dice = new Die [9];

}
void draw()
{
   
  //  int time = millis() - startTime;
  // if(millis() -){
  // startTime = millis();
  // //if (endX == 354 && endY == 400)
  // //    background(55);
  // //    rect(0,0,200,200);
  // reset();
  //}
  if (millis()-startTime>0){
    startTime+=3000;
  background(215,72,72);
  fill(0,0,0,40);
  rect(350,55,100,200, 10, 10, 10, 10);
  total=0;
  count1=0;
  count2=0;
  count3=0;
  count4=0;
  count5=0;
  count6=0;
  avg = 0;

  for(int i = 0;i<3;i++){
    for(int j= 0;j<3;j++){
      dice[i*3+j]  = new Die(110*i+10,110*j+10);
    }
  }
  for(Die x : dice)
  {
    x.show();
  }
  roll++;
   fill(255);
   textSize(45);
   text("Total:" + total, 30, 400);   
   textSize(25);
   text("Roll:" + roll, 35, 430);
   text("Average Roll:" + avg, 35, 455);
   textSize(20);
   text("Ones:" + count1, 360, 84);   
   text("Twos:" + count2, 360, 114);   
   text("Threes:" + count3, 360, 144);   
   text("Fours:" + count4, 360, 174);   
   text("Fives:" + count5, 360, 204);  
   text("Sixes:" + count6, 360, 234);  
   textSize(25);
   text("Running Total:" + runtotal, 255, 480);  

   
 
  }
}
//void reset(){
//}
void mousePressed()
{
  redraw();
   roll ++;

}
class Die //models one single dice cube
{
  private int x;
  private int y;
  private int rand;

  Die(int x, int y) //constructor
  {
  this.x=x;
  this.y=y;
  rand = (int)(Math.random()*6)+1;
  total += rand; 
 
  }
  void roll()
  {
  }
  void show()
  {
   runtotal+=rand;
   avg = (double)runtotal/roll;

   fill(random(0,255)%250, random(0,255)%250, random(0,255)%250);

     rect(x,y,75,75, 10, 10, 10, 10);
   
      if(rand==1){
        count1++;
        fill(0);
        ellipse(x+37, y+37, 10,10);
      }
       if(rand==2){    
        count2++;
        fill(0);
        ellipse(x+54, y+54, 10,10);
        ellipse(x+20, y+20, 10,10);
       }
       if(rand==3){
        count3++;
        fill(0);
        ellipse(x+37, y+37, 10,10);
        ellipse(x+20, y+20, 10,10);
        ellipse(x+54, y+54, 10,10);
       }
       if(rand==4){
        count4++;
        fill(0);
        ellipse(x+20, y+20, 10,10);
        ellipse(x+20, y+54, 10,10);
        ellipse(x+54, y+20, 10,10);
        ellipse(x+54, y+54, 10,10);
       }
       if(rand==5){
         count5++;
        fill(0);
        ellipse(x+20, y+20, 10,10);
        ellipse(x+20, y+54, 10,10);
        ellipse(x+54, y+20, 10,10);
        ellipse(x+54, y+54, 10,10);
        ellipse(x+37, y+37, 10,10);
       }
       if(rand==6){
         count6++;
        fill(0);
        ellipse(x+20, y+20, 10,10);
        ellipse(x+20, y+54, 10,10);
        ellipse(x+54, y+20, 10,10);
        ellipse(x+54, y+54, 10,10);
        ellipse(x+54, y+37, 10,10);
        ellipse(x+20, y+37, 10,10);
       }
  }
}
