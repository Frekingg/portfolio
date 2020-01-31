import static java.lang.System.*;

class SiteName implements Comparable<SiteName>
{
  
  private String type;
  private String website;
  
  public SiteName(String t, String w){
    type = t;
    website = w;
  }
  
  public int compareTo(SiteName other ){
    
    if(this.website.compareTo(other.website) == 0){
      return this.type.compareTo(other.type);
    }
    
    return this.website.compareTo(other.website);
    
  }
 
  public String toString( )
  {
     return type + "." + website;
  }
  

}
