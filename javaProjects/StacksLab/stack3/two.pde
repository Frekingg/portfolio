class IntStack
{

 private ArrayList<Integer> listOfInts;
 
 public IntStack()
 {
   listOfInts = new ArrayList <Integer>();
 }
 public void push(int item)
 {
   listOfInts.add(0,item);
 }
 public int pop(){
  return listOfInts.remove(0);
 }
 public boolean isEmpty(){
    return listOfInts.size()==0;
 }
 public int peek()
 {
     return listOfInts.get(0);
 }
 public String toString(){
    ArrayList<Integer> reorder = new ArrayList<Integer>();
    for(int i = listOfInts.size()-1;i>=0;i--){
      reorder.add(listOfInts.get(i));
    }
    return "" + reorder;
 }
}
