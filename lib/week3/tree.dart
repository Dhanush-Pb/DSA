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
  bst.search(1);
  bst.delete(bst.root, 210);
  // print('${bst.findsecondlargest(bst.root)} dfgh');
  bst.ISBSTOR(bst.root);
  bst.indro(bst.root);
  print('${bst.findseconlargest(bst.root)} is largest');
  print(' closet value is ${bst.closet(14)}');
}

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
        } else {
          if (data > temp.data) {
            if (temp.right == null) {
              temp.right = nenode;
              return;
            } else {
              temp = temp.right;
            }
          } else if (temp.left == null) {
            temp.left = nenode;
            return;
          } else {
            temp = temp.left;
          }
        }
      }
    }
  }

  void search(int data) {
    Node? temp = root;
    while (temp != null) {
      if (temp.data == data) {
        print('value founded');
        return;
      } else if (data < temp.data) {
        temp = temp.left;
      } else if (data > temp.data) {
        temp = temp.right;
      } else {
        break;
      }
    }
  }

  void indro(Node? root) {
    print('');
    indrotravers(root);
  }

  void indrotravers(Node? root) {
    if (root != null) {
      indrotravers(root.left);
      print(root.data);
      indrotravers(root.right);
    }
  }

  void pre(Node? root) {
    print('');
    preorder(root);
  }

  void preorder(Node? root) {
    if (root != null) {
      print(root.data);
      preorder(root.left);
      preorder(root.right);
    }
  }

  findlargest(Node? root) {
    while (root!.right != null) {
      root = root.right;
    }
    return root.data;
  }

  findseconlargest(Node? root) {
    if (root!.right == null && root.left != null) {
      return findlargest(root.left);
    }
    if (root.right != null &&
        root.right!.left == null &&
        root.right!.right == null) {
      return root.data;
    }
    return findseconlargest(root.right);
  }

  delete(Node? root, int value) {
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
        root.data = findminim(root.right).data;
        root.right = findminim(root.right);
      }
    }
    return root;
  }

  Node findminim(Node? root) {
    while (root!.left != null) {
      root = root.left!;
    }
    return root;
  }

  isbst(Node? root, int? max, int? min) {
    if (root == null) {
      return true;
    }
    if ((min != null && min <= root.data && max != null && max >= root.data)) {
      return false;
    }
    return isbst(root.left, max, root.data) &&
        isbst(root.right, root.data, min);
  }

  // ignore: non_constant_identifier_names
  void ISBSTOR(Node? root) {
    if (isbst(root, null, null)) {
      print('is bst');
    } else {
      print('nothing');
    }
  }

  int closet(int target) {
    if (root == null) {
      return -1; // or any default value indicating no value found
    }

    Node? temp = root;
    int closest = temp!.data;

    while (temp != null) {
      // Update closest if the current node's value is closer to the target
      if ((target - closest).abs() > (target - temp.data).abs()) {
        closest = temp.data;
      }

      // Traverse left or right based on the target value
      if (target < temp.data) {
        temp = temp.left;
      } else if (target > temp.data) {
        temp = temp.right;
      } else {
        // If target is found, no need to traverse further
        break;
      }
    }

    return closest;
  }
}
