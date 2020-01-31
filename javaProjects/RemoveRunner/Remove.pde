import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import static java.lang.System.*;
import java.util.*;

public class IteratorRemover
{
  private ArrayList<String> list;
  private String toRemove;
  private String l;

  public IteratorRemover(String line, String rem)
  {
    list = new ArrayList <String> (Arrays.asList(line.split(" ")));
    toRemove = rem;
  }

  public void setTest(String line, String rem)
  {
    list = new ArrayList <String> (Arrays.asList(line.split(" ")));
    toRemove = rem;
  }

  public void remove()
  {
    Iterator <String> delete = list.iterator();
      while(delete.hasNext()){
        if(delete.next().equals(toRemove))
        {
          delete.remove();
        }
      }
  }

  public String toString()
  {
    return "New list: " + list;
  }
}
