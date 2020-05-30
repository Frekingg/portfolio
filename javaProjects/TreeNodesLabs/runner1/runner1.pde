BST tree=new BST();
TreeNode current;
String s="Think of an Animal";
Scenes sc;
boolean introSlide=false;
boolean one=false;
boolean two=false;

void setup() {
  size(900, 500);
  current=tree.buildTree();
  sc=new Scenes();
}
void draw() {
  background(#C23D46);
  fill(#BEB5BF);
  textSize(30);
  text(s, 150, height/2);
  changeScenes();
}


void changeScenes() {
  if (introSlide==true) {
    sc.scene0();
  } else if (one==true) {
    sc.scene1();
  } else if (two==true) {
    sc.scene2();
  } else {
    introSlide=true;
  }
}

void keyPressed() {
  if (keyCode == LEFT) {
    s=(String)current.getValue();
    System.out.println(s);
    if (s.equals("Lion")) {//leaf
      one=true;
      introSlide=false;
    } else if (s.equals("Lizard")) {//leaf
      two=true;
      introSlide=false;
    } else {
      current= current.getLeft();
    }
  } else if (keyCode == RIGHT) {
    s=(String)current.getValue();
    System.out.println(s);
    if (s.equals("Lion")) {//leaf
      one=true;
      introSlide=false;
    } else if (s.equals("Lizard")) {//leaf
      two=true;
      introSlide=false;
    } else {
      current = current.getRight();
    }
  }
}



interface Treeable {
  public Object getValue();
  public Treeable getLeft();
  public Treeable getRight();
  public void setValue(Comparable value);
  public void setLeft(Treeable left);
  public void setRight(Treeable right);
}
