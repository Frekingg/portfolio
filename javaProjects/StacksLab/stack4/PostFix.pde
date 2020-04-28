import java.util.*;

public class PostFix{
    private Stack<Double> stack;
    private String expression;

    public PostFix(){
        stack = new Stack<Double>();
        setExpression("");
    }

    public PostFix(String exp){
        stack = new Stack<Double>();
        setExpression(exp);
    }

    public void setExpression(String exp){
        expression = exp;
    }

    public double calc(double one, double two, char op){
      
      double answer = 0.0;
      if(op == '+'){
        answer = one + two;
      }
      if(op == '-'){
        answer = one - two;
      }
      if(op == '*'){
        answer = one * two;
      }
      if(op == '/'){
        answer = two / one;
      }
      
      return answer;  
    }

    public double solve() 
    {
      for(int i = 0;i<expression.length();i++)
      {
        char c = expression.charAt(i);
        if(Character.isDigit(c))
        {
          stack.push((double)(c - '0'));
        }
        else{
          double first = stack.pop();
          double second = stack.pop();
          stack.push(calc(first, second, expression.charAt(i)));
        }
      }
     return stack.pop();
      
   }

    public String toString() {
        return expression + " = " + solve();
    }
}
