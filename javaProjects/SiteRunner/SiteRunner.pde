import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.Collections;
import static java.lang.System.*;
String [] name;

void setup(){
   name = loadStrings("Desktop/SiteRunner/site.dat");
   ArrayList <SiteName> s = new ArrayList<SiteName>();
   
  System.out.println("before sorted: ");
   for(String x: name){
   Scanner scan = new Scanner(x);
   scan.useDelimiter("\\.");
   s.add(new SiteName(scan.next(), scan.next()));
   scan.close();
 }
  
  System.out.println(s);
  System.out.println("After sorted: ");
  Collections.sort(s);
  for(SiteName x: s){
  out.println(x);
  
 }
  
  
  
}
