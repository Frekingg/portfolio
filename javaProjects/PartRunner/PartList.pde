import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.TreeMap;
import java.util.Scanner;
import static java.lang.System.*;

public class PartList
{
  private TreeMap<Part, Integer> partsMap;
  //private String [] partList;
  
  public PartList(){
    partsMap = new TreeMap <Part, Integer>();
  }
  public PartList(String fileName)
  {
    this();
    String [] str = loadStrings(fileName);
    Part p;
    for(String s: str){
      p = new Part(s);
      if(partsMap.get(p) == null)
      {
        partsMap.put(p, 0);
      }
      partsMap.put(p, partsMap.get(p) + 1);
    }
    //partList = loadStrings("partinfo.dat");
  }
  
  public String toString()
  { 
    String output="";
    for(Part p: partsMap.keySet())
    {
    output += " " + p + partsMap.get(p) + "\n";
    }
    return output;
  }
}
