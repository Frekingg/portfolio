import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.ListIterator;
import static java.lang.System.*;

public class IteratorReplacer
{
  private ArrayList<String> list;
  private String toRemove, replaceWith;

  public IteratorReplacer(String line, String rem, String rep)
  {
      list = new ArrayList <String> (Arrays.asList(line.split(" ")));
      toRemove = rem;
      replaceWith = rep;
  }

  public void setEmAll(String line, String rem, String rep)
  {
    list = new ArrayList <String> (Arrays.asList(line.split(" ")));
      toRemove = rem;
      replaceWith = rep;
  }

  public void replace()
  {
    ListIterator <String> it =list.listIterator();
      while(it.hasNext()){
        if(it.next().equals(toRemove)){
          it.set(replaceWith);
        }
      }
  }

  public String toString()
  {
    return "New data: " + list.toString()+"\n\n";
  }
}
