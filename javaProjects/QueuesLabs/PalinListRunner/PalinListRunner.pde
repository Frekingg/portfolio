import java.util.Queue;
import java.util.LinkedList;

void setup(){
  PalinList test = new PalinList("one two three two one");
  test.isPalin();
  System.out.println(test);
  
  PalinList test1 = new PalinList("1 2 3 4 5 one two three four five");
  test1.isPalin();
  System.out.println(test1);
  
  PalinList test2 = new PalinList("a b c d e f g x y z g f h");
  test2.isPalin();
  System.out.println(test2);
  
  PalinList test3 = new PalinList("racecar is racecar");
  test3.isPalin();
  System.out.println(test3);
  
  PalinList test4 = new PalinList("1 2 3 a b c c b a 3 2 1");
  test4.isPalin();
  System.out.println(test4);
  
  PalinList test5 = new PalinList("chicken is a chicken");
  test5.isPalin();
  System.out.println(test5);  
}
