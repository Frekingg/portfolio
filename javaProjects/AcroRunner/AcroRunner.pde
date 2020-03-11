import java.io.File;
import java.io.IOException;
import java.util.Scanner;
import static java.lang.System.*;

void setup(){
  Acronyms a = new Acronyms();
  String [] str = loadStrings("acro.dat");
  String [] translate = loadStrings("translate.dat");
    for(String s: str){
      a.putEntry(s);
    }
    for(String t: translate){
      println(a.convert(t) + " ");
    }
}
