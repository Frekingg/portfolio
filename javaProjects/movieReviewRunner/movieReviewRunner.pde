
import java.util.Collections;

MovieList m = new MovieList("narrative");
MovieList o = new MovieList("sentiment");
MovieList v = new MovieList("unpredictable");
MovieList i = new MovieList("strong");
MovieList e = new MovieList("terrible");


void setup(){
 m.loadMovies();
  o.loadMovies();
   v.loadMovies();
    i.loadMovies();
     e.loadMovies();
 background(0);
 size(500,500);
 fill(255);
 textSize(20);
 text("" + m.getAverageScore(), 10, 30);
 text("Keyword: " + m.word, 10, 50);
 text(m.Comment(), 10, 70);
 textSize(20);
 text("" + o.getAverageScore(), 10, 90);
 text("Keyword: " + o.word, 10, 110);
 text(o.Comment(), 10, 130);
 textSize(20);
 text("" + v.getAverageScore(), 10, 150);
 text("Keyword: " + v.word, 10, 170);
 text(v.Comment(), 10, 190);
 textSize(20);
 text("" + i.getAverageScore(), 10, 210);
 text("Keyword: " + i.word, 10, 230);
 text(i.Comment(), 10, 250);
 textSize(20);
 text("" + e.getAverageScore(), 10, 270);
 text("Keyword: " + e.word, 10, 290);
 text(e.Comment(), 10, 310);

 
}
