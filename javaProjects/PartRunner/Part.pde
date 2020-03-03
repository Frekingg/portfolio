public class Part implements Comparable<Part>
{
  private String make, model, theRest;
  private int year;

  public Part(String line) 
  {
    String[] list = line.split(" ");
    int i = list.length-1;
    
        year = Integer.parseInt(list[i]);
        i--;
        model = list[i];
        i--;
        make = list[i];
        i--;
        
        while(i>=0){
          theRest = list[i] + " " + theRest;
        i--; 
        }
  }

  public int compareTo(Part other)
  {
    if(this.make.compareTo(other.make)!=0){
      return this.make.compareTo(other.make);
    }
    if(this.model.compareTo(other.model)!=0){
      return this.model.compareTo(other.model);
    }
    if(this.year<other.year){
      return -1;
    }
    if(this.year>other.year){
      return 1;
    }
    
    return this.theRest.compareTo(other.theRest);
  }
  
  public String toString()
  {
    return "" + make + " " + model + " " + year + " " + theRest + " ";
  }
}
