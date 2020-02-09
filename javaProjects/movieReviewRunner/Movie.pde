public class Movie implements Comparable<Movie>{
  private String review;
  private int rating;
  
  public  Movie(int rate, String r ){
    review = r;
    rating = rate;
  }
  
  public int compareTo(Movie other){
    if(this.rating>other.rating){
      return 1;
    }
    if(this.rating<other.rating){
      return -1;
    }
    return this.review.compareTo(other.review);
  }
  
  public int getRating(){
    return this.rating;
  }
  public String getReview(){
    return this.review;
  }
  
 public String toString(){
   return "Rating: " + rating + "\n" + "Review: " + review;
   
  }
}
