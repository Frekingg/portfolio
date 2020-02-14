import java.util.*;

public class MovieList {
  
  private ArrayList <Movie> movieList;
  private int count;
  private int average;
  public String [] list;
  public String word;
  
    public MovieList(String w){
      movieList = new <Movie> ArrayList();
      word = w;
    }
  public void loadMovies() {
    list = loadStrings("movieReview.dat");
    for (String x : list)
    {
      Scanner scan = new Scanner(x);
      if(x.indexOf(word)>0){
      movieList.add(new Movie(scan.nextInt(), scan.nextLine()));
      }
      scan.close();
    }
    for (Movie m: movieList) {
      println(m);
    }
    count = movieList.size();
  }

  public int getCount() {
    return count;
    }
  public double getAverageScore() {
    double total = 0.0;
    for (Movie x: movieList) {
      total += x.getRating();
  }
  return total/count;
  }
  
  public String Comment() {
    if (getAverageScore()>3.5) {
      return "positive";
    } 
    if (getAverageScore()>2.5) {
      return "somewhat positive";
    }
    if (getAverageScore()>1.5) {
      return "neutral";
    }
    if (getAverageScore()>.5) {
      return "somewhat negative";
    }
      return  "negative";
  }
  public void sortMoviesByCount() {
    Collections.sort(movieList);
  }

  public String toString() {
    String n = "";
    Iterator <Movie> loop = movieList.iterator();
    while (loop.hasNext()) {
      n+= loop.next() + "\n";
    }
    return n;
  }
}
