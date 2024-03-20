class Node {
  int data;
  Node? left, right;
  Node(this.data);
}

class BST {
  Node? root;

  void add(int data) {
    Node nenode = Node(data);

    if (root == null) {
      root = nenode;
    } else {
      Node? temp = root;
      while (temp != null) {
        if (data == temp.data) {
          return;
        } else if (data > temp.data) {
          if (temp.right == null) {
            temp.right = nenode;
          } else {
            temp = temp.right;
          }
        } else if (temp.left == null) {
          temp.left = nenode;
        } else {
          temp = temp.left;
        }
      }
    }
  }

  int? findsmallest(Node? root) {
    while (root!.left != null) {
      root = root.left;
    }
    return root.data;
  }

  int? findlargest(Node? root) {
    while (root!.right != null) {
      root = root.right;
    }
    return root.data;
  }

  int? secondlargest(Node? root) {
    if (root!.left != null && root.right != null) {
      return findlargest(root);
    }
    if (root.right != null && root.right!.left != null) {
      return root.data;
    }
    return secondhelper(root.right);
  }

  int secondhelper(Node root) {
    if (root.right!.right != null) {
      root = root.right!;
    }
    return root.data;
  }

  void search(int data) {
    Node? temp = root;
    while (temp != null) {
      if (data == temp.data) {
        print('valu found');
        return;
      } else if (data > temp.data) {
        temp = temp.right;
      } else {
        temp = temp.left;
      }
    }
  }

  void intro(Node? root) {
    print('');
    introtrav(root);
  }

  void introtrav(Node? root) {
    if (root != null) {
      introtrav(root.left);
      print(root.data);
      introtrav(root.right);
    }
  }

  void preorde(Node? root) {
    print('');
    pre(root);
  }

  void pre(Node? root) {
    if (root != null) {
      print(root.data);
      pre(root.left);
      pre(root.right);
    }
  }

  void post(Node? root) {
    print(' ');
    postorder(root);
  }

  void postorder(Node? root) {
    if (root != null) {
      postorder(root.left);
      postorder(root.right);
      print(root.data);
    }
  }

  Node? delete(Node? root, int value) {
    if (root == null) {
      return null;
    } else {
      if (value < root.data) {
        root.left = delete(root.left, value);
      } else if (value > root.data) {
        root.right = delete(root.right, value);
      } else {
        if (root.right == null) {
          return root.left;
        } else if (root.left == null) {
          return root.right;
        }
        root.data = findmid(root.right).data;
        root.right = delete(root.right, root.data);
      }
    }
    return root;
  }

  Node findmid(Node? root) {
    while (root!.left != null) {
      root = root.left;
    }
    return root;
  }

  // int closestValue(int target) {
  //   if (root == null) {
  //     return -1;
  //   }

  //   Node? temp = root;
  //   int closest = temp!.data; // Initialize to the value of the root node
  //   while (temp != null) {
  //     if ((target - closest).abs() > (target - temp.data)) {
  //       closest = temp.data;
  //     }
  //     if (target > temp.data) {
  //       temp = temp.right;
  //     } else if (target < temp.data) {
  //       temp = temp.left;
  //     } else {
  //       break;
  //     }
  //   }
  //   return closest;
  // }
}

void main() {
  BST bst = BST();

  bst.add(99);
  bst.add(150);
  bst.add(70);
  bst.add(23);
  bst.add(79);
  bst.add(24);
  bst.add(22);
  bst.add(87);
  bst.add(75);
  bst.add(210);
  bst.add(180);
  bst.add(170);
  bst.add(175);
  bst.add(90);
  bst.add(88);
  bst.add(11);
  bst.add(3);
  bst.add(1);
  bst.add(2);
  bst.add(14);

  bst.post(bst.root);
  print(' ${bst.findlargest(bst.root)} klasdhghadg');
}
