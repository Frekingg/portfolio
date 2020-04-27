public class Circus{
  private Stack <String> stack;
  private String [] st;
  
  Circus(String [] s)
  {
    stack = new Stack <String>();
    st = s;
  }
  
  void order()
  {
    for(int i=0;i<st.length;i+=2){
      stack.push(st[i]);
    }
    if(st.length%2==0){
      for(int i = st.length-1;i>=1;i-=2){
        stack.push(st[i]);
      }
    }
  else{
    for(int i = st.length -2;i>=1;i-=2)
    {
      stack.push(st[i]);
    }
  }
  System.out.println(stack);
  
  }  
}
