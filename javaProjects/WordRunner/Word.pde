import static java.lang.System.*;

public class Word implements Comparable<Word>
{
  private String word;

  public Word( String s )
  {
  
    word = s;
  }

  public int compareTo( Word rhs )
  {    
    if(this.word.length()>rhs.word.length()){
    return 1;
    }
    if(this.word.length()<rhs.word.length()){
    return -1;
    }
    if(this.word.compareTo(rhs.word)>1){
      return 1;
    }
     if(this.word.compareTo(rhs.word)<1){
      return -1;
    }
    return 0;
  }

  public String toString()
  {
    return word;
  }
}
