import java.util.ArrayList;
import static java.lang.System.*;

public class IntQueue
{

  //option 1
  //private int[] rayOfInts;
  //private int numInts;

  //option 2
  private ArrayList<Integer> listOfInts;

  public IntQueue()
  {
    listOfInts = new ArrayList <Integer>();
  }

  public void add(int item)
  {
    listOfInts.add(0,item);
  }

  public int remove()
  {
    return listOfInts.remove(listOfInts.size()-1);
  }

  public boolean isEmpty()
  {
    return listOfInts.size()==0;
  }

  public int peek()
  {
     return listOfInts.get(listOfInts.size()-1);
  }

  public String toString()
  {
    ArrayList<Integer> reorder = new ArrayList<Integer>();
    for(int i = listOfInts.size()-1;i>=0;i--){
      reorder.add(listOfInts.get(i));
    }
    return "" + reorder;
  }
}
