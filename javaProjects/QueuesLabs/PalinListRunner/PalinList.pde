import java.util.Queue;
import java.util.Stack;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.LinkedList;

public class PalinList
{
  private Queue<String> queue;
  private Stack<String> stack;
  private Stack<String> restack;
  private String l;

  public PalinList()
  {
    stack = new Stack <String>();
    restack = new Stack <String>();

    Queue <String> queue = new LinkedList<String>();
    setList("");
  }

  public PalinList(String list)
  {
    stack = new Stack <String>();
    restack = new Stack <String>();

    //Queue <String> queue = new LinkedList<String>();
    setList(list);

  }

  public void setList(String list)
  {
    l = list;
  }

  public boolean isPalin()
  {
    String [] newstack = l.split(" ");  
    for(int i = 0;i<newstack.length;i++){
      stack.push(newstack[i]);
    }
    //for(int i = 0;i<newstack.length;i++){
    //  queue.add(newstack[i]);
    //}
    
    //for(int i = 0;i<stack.length
    
    if(restack.isEmpty()){
      while(!stack.isEmpty()){
        restack.add(stack.pop());
      }
    }
    
    if(restack.equals(stack)){
    return true;
    }
    else return false;
  }
  
   public String toString() {
     if(isPalin() == true){
        return "[" + l + "]" + " is a palinlist.";
     }
     else 
     return "[" + l + "]" + " is not a painlist";
    }

  //write a toString method
}
