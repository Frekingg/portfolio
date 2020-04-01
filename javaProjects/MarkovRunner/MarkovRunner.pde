import static java.lang.System.*;

import java.util.Collections;
int startTime = 0;
int last = 0;
int n = 0;
int i = 0;
MarkovChain mc=new MarkovChain();
String [] cleanText;

void setup() {
  size(700, 700);
  background(0);
  String [] str=loadStrings("stevejobs.dat");
  String allText=join(str, " ");
  cleanText=allText.replaceAll("[^a-zA-Z ]", "").toLowerCase().split("\\s+");
  //removes punct before splitting
  mc.trainMap(cleanText); 
  mc.printMap();
  for (String s : cleanText) {
    mc.generateText(s);
    println(mc.generateText(s));
        //println(s);

    //println(mc.generateText2(2));
  }
}

void draw() {

  fill(255, 186, 255);
  rect(275, 245, 150, 50);
  fill(255);
  textSize(18);
  text("CLICK THE BUTTON FOR ADVICE", 215, 230);
  fill(255);
  textSize(30);
  text("Advice: ", 300, 280);
  
  if (mouseX>275 && mouseX<425 && mouseY>245 && mouseY<295) {
    if (mousePressed == true) {
      fill(0);
      rect(90, 320, 800, 500);
      fill(186, 219, 255);
      rect(275, 245, 150, 50);
      fill(255);
      fill(255);
      textSize(30);
      text("Advice: ", 300, 280);
      fill(255);
      textSize(30);
      //text(s, 300, 350);
      text(mc.generateText(cleanText[i]), 100, 350);
      i++;
     
      if(i==cleanText.length)
        {
            i=0;  
        }  
      
        
    //  for (String s : cleanText) {
    //mc.generateText(s);
    //fill(255);
    //textSize(30);
    //text(mc.generateText(s), 300, 350);
    //  }
    }
  }
}


interface Markov {
  void trainMap(String [] s);
  String generateText(String s);
}
