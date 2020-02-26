import java.io.File;
import java.io.IOException;
import java.util.Scanner;
import static java.lang.System.*;

void setup(){
  SpanishToEnglish se = new SpanishToEnglish();
  String [] str = loadStrings("spantoengl.dat");
  String [] translate = loadStrings("translate.dat");
    for(String s: str){
      se.putEntry(s);
    }
    for(String t: translate){
      println(se.translate(t) + " ");
    }
}
