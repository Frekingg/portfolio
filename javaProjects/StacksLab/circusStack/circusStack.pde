import java.util.Stack;
Circus c;
String [] c1;
String [] c2;
String [] c3;

void setup() {
 c1 = loadStrings("test.txt");
 c2 = loadStrings("test2.txt");
 c3 = loadStrings("test3.txt");
 
 
 System.out.println("Set 1: ");
 Circus c = new Circus (c1);
 c.order();
 
 System.out.println("Set 2: ");
 c = new Circus (c2);
 c.order();

 System.out.println("Set 3: ");
 c = new Circus (c3);
 c.order();

  
  
}
