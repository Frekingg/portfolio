import java.io.IOException;
import java.io.File;
import java.util.Scanner;
import static java.lang.System.*;

void setup(){
  try{
    Scanner file = new Scanner(new File("Desktop/OddOrEvenRunner/oddoreven.dat"));
    int size = file.nextInt();
    file.nextLine();
    for(int i = 0; i < size; i++)
    {
      int num = file.nextInt();
      OddOrEven oe=new OddOrEven(num);
      println(oe);
    }
  }catch(Exception e){
    println(e);
  }
 }
