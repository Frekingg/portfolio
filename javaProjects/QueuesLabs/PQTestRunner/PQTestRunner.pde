import java.util.Queue;
import java.util.LinkedList;
void setup()
{
  PQTester test = new PQTester("1 2 3 4 5 one two three four five");
  test.getNaturalOrder();
  System.out.println(test);
  
  PQTester test1 = new PQTester("one two three four five six seven");
  test1.getNaturalOrder();
  System.out.println(test1);
  
  PQTester test2 = new PQTester("a p h j e f m c i d k l g n o b");
  test2.getNaturalOrder();
  System.out.println(test2);

}
