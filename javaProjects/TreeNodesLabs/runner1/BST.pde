class BST {
  TreeNode root;
  TreeNode current;

  public BST() {
    root=null;
  }
  TreeNode buildTree() {
    root=new TreeNode("Do you like mammals (left) or reptiles (right)?");
    //level one
    root.setRight(new TreeNode("Large Reptiles (left) or Small Reptiles (right)?"));
    root.setLeft(new TreeNode("Large Mammals (left) or Small Mammals (right)?"));
    //level two
    root.getLeft().setLeft(new TreeNode("Can they fly (left )or not (right)?"));
    root.getRight().setRight(new TreeNode("Carnivores (left )or Herbivores (right)?"));
    root.getLeft().setRight(new TreeNode("Carnivores (left) or Herbivores (right)?"));
    root.getRight().setLeft(new TreeNode("Do they have legs (left )or not (right)?"));

    //level three left sub tree
    root.getLeft().getLeft().setLeft(new TreeNode("Lion"));
    root.getLeft().getLeft().setRight(new TreeNode("Bat"));
    root.getLeft().getRight().setLeft(new TreeNode("Panda Bear"));
    root.getLeft().getRight().setRight(new TreeNode("Mouse"));

    //level three right sub tree
    root.getRight().getRight().setRight(new TreeNode("Lizard"));
    root.getRight().getRight().setLeft(new TreeNode("Alligator"));
    root.getRight().getLeft().setLeft(new TreeNode("Garden Snake"));
    root.getRight().getLeft().setRight(new TreeNode("Iguana"));
    
    current=root;
    return current;
  }
}
