import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.Collections;
import static java.lang.System.*;
String [] date;

void setup(){
 date = loadStrings("Desktop/PersonRunner/person.dat");
 ArrayList <Person> p = new ArrayList<Person>();
 
 System.out.println("before sorted: ");
   for(String x: date){
   Scanner scan = new Scanner(x);
   p.add(new Person(scan.nextInt(), scan.nextInt(), scan.nextInt(), scan.next()));
   scan.close();
 }
  System.out.println(p);
  System.out.println("After sorted: ");
  Collections.sort(p);
  for(Person x: p){
  out.println(x);
  
 }
 
}
