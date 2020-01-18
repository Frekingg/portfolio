import static java.lang.System.*;

int startTime = 0;
int last = 0;
int m = 0;
String greeneggs;
String greeneggs2;
String [] ham;
String smice;
String mice2;
String [] omam;
String edgar;
String allen;
String [] poe;
String sula;
String toni;
String [] morrison;
int w, w2, w3, w4;
int v, v2, v3, v4;
int s, s2, s3, s4;
int syl, syl2, syl3, syl4;
double f, f2, f3, f4;
double g, g2, g3, g4;



PImage green;
PImage imice;
PImage raven;
PImage nel;

void setup() {
  size(700, 700);
  background(0);
  green = loadImage("green.jpg");
  green.resize(150,200);
  ham = loadStrings("greenEggs.dat");
  greeneggs = join(ham, " ");
  greeneggs2 = greeneggs.toLowerCase();
  
  imice = loadImage("mice.jpg");
  imice.resize(150,200);
  omam = loadStrings("mice.dat");
  smice = join(omam, " ");
  mice2 = smice.toLowerCase();
  
  raven = loadImage("raven.jpg");
  raven.resize(150,200);
  poe = loadStrings("raven.dat");
  edgar = join(poe, " ");
  allen = edgar.toLowerCase();
  
  nel = loadImage("sula.jpg");
  nel.resize(150,200);
  morrison = loadStrings("sula.dat");
  sula = join(morrison, " ");
  toni = sula.toLowerCase();
  
  
  //String one="Hello, I am nine syllables long. And it is great!";
  //String words[] = one.split("[\\,\\!\\.\\ ]+");
  StringParser parser = new StringParser();
  println("Words:" + parser.countWords(greeneggs2));
  println("Vowels:" + parser.countVowels(greeneggs2));
  println("Sentences:" + parser.countSentences(greeneggs2));
  println("Syllables:" + parser.countSyllables(greeneggs2));
  println("Flesch Score:" + parser.fleschScore(greeneggs2));
  println("Flesch-Kincaid Grade Level:" + parser.kincaidScore(greeneggs2));
  w = parser.countWords(greeneggs2);
  v = parser.countVowels(greeneggs2);
  s = parser.countSentences(greeneggs2);
  syl = parser.countSyllables(greeneggs2);
  f =  parser.fleschScore(greeneggs2);
  g =parser.kincaidScore(greeneggs2);
  w2 = parser.countWords(mice2);
  v2 = parser.countVowels(mice2);
  s2 = parser.countSentences(mice2);
  syl2 = parser.countSyllables(mice2);
  f2 =  parser.fleschScore(mice2);
  g2 =parser.kincaidScore(mice2);
  w3 = parser.countWords(allen);
  v3= parser.countVowels(allen);
  s3 = parser.countSentences(allen);
  syl3 = parser.countSyllables(allen);
  f3 =  parser.fleschScore(allen);
  g3 =parser.kincaidScore(allen);
  w4 = parser.countWords(toni);
  v4= parser.countVowels(toni);
  s4 = parser.countSentences(toni);
  syl4 = parser.countSyllables(toni);
  f4 =  parser.fleschScore(toni);
  g4 =parser.kincaidScore(toni);
}
void draw(){
 
  
  if(millis()-startTime>0){
      startTime += 5000;
  
  for(int i =0; i<100;i++){
      m = (int)(Math.random()*4) +1;
  
  if (m==1){
    background(0);
    fill(255,255,0);
    rect(40,40,170,220);
    image(green,50,50);
    image(imice,500,50);
    image(raven,50,450);
    image(nel,500,450);
    fill(255);
    textSize(30);
    text("LIBRARY", 290, 225);
    textSize(12);
    text("Information on selected book", 260, 250);
    fill(255);
    textSize(15);
    text("Number of words: " + w , 175,300);
    textSize(15);
    text("Number of vowels: " + v, 175,325);
    textSize(15);
    text("Number of sentences: " + s, 175,350);
    textSize(15);
    text("Number of syllables: " + syl, 175,375);
    textSize(15);
    text("Flesch Score: " + f, 175,400);
    textSize(15);
    text("Flesch-Kincaid Grade Level: " + g, 175,425);
  }
  
  if (m==2){
    //startTime+=6000;
    background(0);
     fill(255,255,0);
    rect(490,40,170,220);
    image(green,50,50);
    image(imice,500,50);
    image(raven,50,450);
    image(nel,500,450);
    fill(255);
    textSize(30);
    text("LIBRARY", 290, 225);
    textSize(12);
    text("Information on selected book", 260, 250);
  
   
    fill(255);
    textSize(15);
    text("Number of words: " + w2 , 175,300);
    textSize(15);
    text("Number of vowels: " + v2, 175,325);
    textSize(15);
    text("Number of sentences: " + s2, 175,350);
    textSize(15);
    text("Number of syllables: " + syl2, 175,375);
    textSize(15);
    text("Flesch Score: " + f2, 175,400);
    textSize(15);
    text("Flesch-Kincaid Grade Level: " + g2, 175,425);
  }
  
if (m==3){
    //startTime+=6000;
    background(0);
     fill(255,255,0);
    rect(40,440,170,220);
    image(green,50,50);
    image(imice,500,50);
    image(raven,50,450);
    image(nel,500,450);
    fill(255);
    textSize(30);
    text("LIBRARY", 290, 225);
    textSize(12);
    text("Information on selected book", 260, 250);
  
   
    fill(255);
    textSize(15);
    text("Number of words: " + w3 , 175,300);
    textSize(15);
    text("Number of vowels: " + v3, 175,325);
    textSize(15);
    text("Number of sentences: " + s3, 175,350);
    textSize(15);
    text("Number of syllables: " + syl3, 175,375);
    textSize(15);
    text("Flesch Score: " + f3, 175,400);
    textSize(15);
    text("Flesch-Kincaid Grade Level: " + g3, 175,425);
  }
  
  if (m==4){
    //startTime+=6000;
    background(0);
    fill(255,255,0);
    rect(490,440,170,220);
    image(green,50,50);
    image(imice,500,50);
    image(raven,50,450);
    image(nel,500,450);
    fill(255);
    textSize(30);
    text("LIBRARY", 290, 225);
    textSize(12);
    text("Information on selected book", 260, 250);
  
   
    fill(255);
    textSize(15);
    text("Number of words: " + w4 , 175,300);
    textSize(15);
    text("Number of vowels: " + v4, 175,325);
    textSize(15);
    text("Number of sentences: " + s4, 175,350);
    textSize(15);
    text("Number of syllables: " + syl4, 175,375);
    textSize(15);
    text("Flesch Score: " + f4, 175,400);
    textSize(15);
    text("Flesch-Kincaid Grade Level: " + g4, 175,425);
    
    //if(millis()>=last + 24000){
    //  last = millis();
    //}
      }
    }
  }
  
  //if(millis()==maxTime){
   
  //}
  

  //if(mousePressed){
  ////count +=1;
  //if(mouseX>50 && mouseX<200 &&mouseY>50 &&mouseY<250){
  //  fill(255,255,0);
  //  rect(40,40,170,220);
  //  fill(255);
  //  textSize(15);
  //  text("Number of words: " + w , 175,300);
  //  textSize(15);
  //  text("Number of vowels: " + v, 175,325);
  //  textSize(15);
  //  text("Number of sentences: " + s, 175,350);
  //  textSize(15);
  //  text("Number of syllables: " + syl, 175,375);
  //  textSize(15);
  //  text("Number of Flesch Score: " + f, 175,400);
  //  textSize(15);
  //  text("Number of Flesch-Kincaid Grade Level: " + g, 175,425);
  //  //mousePressed.reset();
  //    }
    
  //  else if(mouseX>500 && mouseX<650 &&mouseY>50 &&mouseY<250){
  //  fill(255,255,0);
  //  rect(490,40,170,220);
  //  fill(255);
  //  textSize(15);
  //  text("Number of words: " + w2 , 175,300);
  //  textSize(15);
  //  text("Number of vowels: " + v2, 175,325);
  //  textSize(15);
  //  text("Number of sentences: " + s2, 175,350);
  //  textSize(15);
  //  text("Number of syllables: " + syl2, 175,375);
  //  textSize(15);
  //  text("Number of Flesch Score: " + f2, 175,400);
  //  textSize(15);
  //  text("Number of Flesch-Kincaid Grade Level: " + g2, 175,425);
    
  //  }
    
  //  if(mouseX>50 && mouseX<200 &&mouseY>450 &&mouseY<650){
  //  fill(255,255,0);
  //  rect(40,440,170,220);
  //  fill(255);
  //  textSize(15);
  //  text("Number of words: " + w3 , 175,300);
  //  textSize(15);
  //  text("Number of vowels: " + v3, 175,325);
  //  textSize(15);
  //  text("Number of sentences: " + s3, 175,350);
  //  textSize(15);
  //  text("Number of syllables: " + syl3, 175,375);
  //  textSize(15);
  //  text("Number of Flesch Score: " + f3, 175,400);
  //  textSize(15);
  //  text("Number of Flesch-Kincaid Grade Level: " + g3, 175,425);
  //  //mousePressed.reset();
  //    }
  //  if(mouseX>500 && mouseX<650 &&mouseY>450 &&mouseY<650){
  //  fill(255,255,0);
  //  rect(490,440,170,220);
  //  fill(255);
  //  textSize(15);
  //  text("Number of words: " + w4 , 175,300);
  //  textSize(15);
  //  text("Number of vowels: " + v4, 175,325);
  //  textSize(15);
  //  text("Number of sentences: " + s4, 175,350);
  //  textSize(15);
  //  text("Number of syllables: " + syl4, 175,375);
  //  textSize(15);
  //  text("Number of Flesch Score: " + f4, 175,400);
  //  textSize(15);
  //  text("Number of Flesch-Kincaid Grade Level: " + g4, 175,425);
  //  //mousePressed.reset();
  //    }
  //}
  //}
}
public class StringParser {
  
  public StringParser() {
  }
  
  public int countWords(String str) {
    int total = 0;
    String words[] = str.split("\\W+");
    for(int i = 0;i<words.length;i++){
      total = words.length;
      //fill();
      //textSize();
      //text();
      
      //for(int i =0;i<words.length;i++){
      //  if(words[i].length() ==2){
      //    total+=2;
      //  }
      //}
    }
      return total;
  }

  public int countVowels(String vow) {
    int total = 0;
    String vowels[] = vow.split("[^aeiouy]+");
      total = vowels.length;
      for(int i =0;i<vowels.length;i++){
        if(vowels[i].length() ==2){
          total+=2;
        }
      }
      return total;
  }

  public int countSyllables(String str) {
    int total = 0;
    String syllables[] = str.split("[aeiouy]+[^$e(,.!?/\\)]");
      total = syllables.length;
      return total;
  }

  public int countSentences(String str) {
    int total = 0;
    String sentences[] = str.split("[.?!]+");
      total = sentences.length;
      for(int i =0;i<sentences.length;i++){
        if(sentences[i].length() ==2){
          total+=2;
        }
      }
      return total;
  }
  public double fleschScore(String str){
    double score = 0;
    score += 206.835-(1.015*(countWords(str)/(countSentences(str))))-(84.6*countSyllables(str)/countWords(str));
    return score;
  }
  
 public double kincaidScore(String str){
   double score = 0;
   score +=(.39*countWords(str)/countSentences(str)) + (11.8*countSyllables(str)/countWords(str))-15.59;
   return score;
   
 }

 
}
