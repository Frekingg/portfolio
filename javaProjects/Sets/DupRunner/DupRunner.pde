import static java.lang.System.*;
import java.util.*;

void setup(){
  UniquesDupes ud = new UniquesDupes("a b c d e f g h i j k");
  println(ud.getUniques("a b c d e f g h i j k"));
  println(ud.getDupes("a b c d e f g h i j k"));
  println(" ");
  println(" ");
  println(ud.getUniques("one two three one two three six seven one two"));
  println(ud.getDupes("one two three one two three six seven one two"));
  println(" ");
  println(" ");
  println(ud.getUniques("1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 6"));
  println(ud.getDupes("1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 6"));
}
