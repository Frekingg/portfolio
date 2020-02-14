
import java.util.Collections;
int startTime = 0;
int last = 0;
int n = 0;
MovieList m = new MovieList("narrative");
MovieList o = new MovieList("sentiment");
MovieList v = new MovieList("unpredictable");
MovieList s = new MovieList("strong");
MovieList e = new MovieList("terrible");


void setup() {

  m.loadMovies();
  o.loadMovies();
  v.loadMovies();
  s.loadMovies();
  e.loadMovies();
  background(0);
  size(500, 500);
  fill(255);
}

void draw() {

  fill(50, 50, 50);
  rect(15, 100, 470, 50);
  fill(255);
  textSize(30);
  text("Typical Movie Reviews: ", 100, 135);



  if (millis()-startTime>0) {
    startTime += 5000;
    for (int i =0; i<=5; i++) {
      n +=1;

      if (n==1) {
        background(0);
        fill(195, 197, 255);
        textSize(30);
        text("NARRATIVE", 190, 200);
        textSize(20);
        text("Rating: " + m.getAverageScore(), 110, 250);
        //text("Keyword: " + m.word, 160, 280);
        text("Review: " + m.Comment(), 190, 300);
      }
      if (n==2) {
        background(0);
        fill(129, 217, 230);
        textSize(30);
        text("SENTIMENT", 190, 200);
        textSize(20);
        text("Rating: " + o.getAverageScore(), 110, 250);
        //text("Keyword: " + o.word, 10, 50);
        text("Review: " + o.Comment(), 190, 300);
      }

      if (n==3) {
        background(0);
        fill(249, 178, 214);
        textSize(30);
        text("UNPREDICTABLE", 160, 200);
        textSize(20);
        text("Rating: " + v.getAverageScore(), 110, 250);
        //text("Keyword: " + v.word, 10, 170);
        text("Review: " + v.Comment(), 190, 300);
      }

      if (n==4) {
        background(0);
        fill(178, 249, 178);
        textSize(30);
        text("STRONG", 190, 200);
        textSize(20);
        text("Rating: " + s.getAverageScore(), 110, 250);
        //text("Keyword: " + s.word, 10, 230);
        text("Review: "+ s.Comment(), 120, 300);
      }


      if (n==5) {
        background(0);
        fill(255, 250, 165);
        textSize(30);
        text("TERRIBLE", 190, 200);
        textSize(20);
        text("Rating: " + e.getAverageScore(), 170, 250);
        //text("Keyword: " + e.word, 10, 290);
        text("Review: " + e.Comment(), 120, 300);
      }


      if (n==5) {
        n=0;
      }
    }
  }
}
