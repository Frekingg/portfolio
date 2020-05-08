import java.util.Queue;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.PriorityQueue;

public class PQTester
{
  private PriorityQueue<String> pQueue;
  private PriorityQueue<String> pQueue2;

  private String l;
  public PQTester()
  {
    //pQueue = new Queue <String>();
    pQueue = new PriorityQueue<String>();
    pQueue2 = new PriorityQueue<String>();

    setPQ("");
    //setPQ2("");
  }

  public PQTester(String list)
  {
     pQueue = new PriorityQueue<String>();
     pQueue2 = new PriorityQueue<String>();

     setPQ(list);
     //setPQ2(next);
  }

  public void setPQ(String list)
  {
    l = list;
  }
  //public void setPQ2(String next)
  //{
  //  n = next;
  //}
  
  public Object getMin()
  {
    String [] newqueue = l.split(" ");
    String [] newqueue2 = l.split(" ");  

    for(int i = 0;i<newqueue.length;i++){
      pQueue.add(newqueue[i]);
    }
    
    for(int i = 0;i<newqueue2.length;i++){
      pQueue2.add(newqueue2[i]);
    }
    return pQueue.peek();
  }
  
  public String getNaturalOrder()
  {
    String output = ""; 
    
    while(!pQueue.isEmpty()){
      output+=pQueue.poll() + " "; 
    }
    return output;  
  }
  
  public String getPriorityOrder(){
    
    //String output="";
    //return output;
    return pQueue2 + " ";
    
  }

  public String toString(){
    return "Min: " + getMin()  +  "\n"  + "Priority: " + pQueue2 +  "\n" +"Natural: " + getNaturalOrder() +"\n" ;
  }
  //write a toString method
}
