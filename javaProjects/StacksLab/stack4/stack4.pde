import java.util.Stack;
import java.util.*;

void setup(){
    PostFix test = new PostFix("27+12++");
    test.solve();
    System.out.println(test);

    test.setExpression("1234+++");
    test.solve();
    System.out.println(test);
    
    test.setExpression("56-8/2+");
    test.solve();
    System.out.println(test);
    
    test.setExpression("12/2+5-9");
    test.solve();
    System.out.println(test);
    
    test.setExpression("10-72++");
    test.solve();
    System.out.println(test);
}
