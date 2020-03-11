import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.TreeMap;
import java.util.Scanner;
import static java.lang.System.*;

public class Acronyms
{
  private Map<String,String> acronymTable;

  public Acronyms()
  {
     acronymTable = new TreeMap<String, String>(); 
  }

  public void putEntry(String entry)
  {
    String[] list = entry.split(" ");
    String k = list[0];
    String v =  "";
   for(int i =2; i<list.length;i++){
     v+=list[i] + " ";
   }
    acronymTable.put(k,v);
  }

  public String convert(String sent)
  {
    Scanner chop = new Scanner(sent);
    String output = "";
    String temp = "";
    //String check  = temp.replaceAll("\\p{Punct}", "");
    chop.useDelimiter("\\W");
    while(chop.hasNext())
    {
      temp = chop.next();
      if(acronymTable.get(temp) != null)
      {
      output +=acronymTable.get(temp) + " ";
      }
      else
      {
        output += temp + " " ;
       }
    }
    chop.close();
    return output;
  }

  public String toString()
  {
    return acronymTable.toString().replaceAll("\\,","\n");
  }
}
