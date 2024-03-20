// ignore_for_file: file_names

class Node {
  int data;
  Node? left, right;
  Node(this.data);
}

class BST {
  Node? root;

  add(int data) {
    Node? newnode = Node(data);
    if (root == null) {
      root = newnode;
    } else {
      Node? temp = root;
      while (temp != null) {
        if (temp.data == data) {
          return;
        } else {
          if (data > temp.data) {
            if (temp.right == null) {
              temp.right = newnode;
              return;
            } else {
              temp = temp.right;
            }
          } else {
            if (temp.left == null) {
              temp.left = newnode;
              return;
            } else {
              temp = temp.left;
            }
          }
        }
      }
    }
  }

  search(int data) {
    Node? temp = root;

    while (temp != null) {
      if (temp.data == data) {
        print('value found that is ${temp.data}');
        return;
      } else {
        if (data > temp.data) {
          temp = temp.right;
        } else {
          temp = temp.left;
        }
      }
    }
    print('value not found');
  }

  void inorderTraverse(Node? node) {
    if (node == null) return;
    inorderTraverse(node.left);
    print(node.data);
    inorderTraverse(node.right);
  }

  bool isbst(Node? node, int? min, int? max) {
    if (node == null) {
      return true;
    }
    if ((min != null && node.data <= min) ||
        (max != null && node.data >= max)) {
      return false;
    }
    return isbst(node.left, min, node.data) &&
        isbst(node.right, node.data, max);
  }

  void bsornot(Node node) {
    if (isbst(node, null, null)) {
      print('the tree is a binary search tree');
    } else {
      print('this is not a binary search tree');
    }
  }

  Node? delete(Node? root, int value) {
    if (root == null) {
      return null;
    }
    if (value < root.data) {
      root.left = delete(root.left, value);
    } else if (value > root.data) {
      root.right = delete(root.right, value);
    } else if (root.left == null) {
      return root.right;
    } else if (root.right == null) {
      return root.left;
    }

    root.data = findmini(root.right).data;
    root.right = findmini(root.right);
    return root;
  }

  Node findmini(Node? root) {
    while (root!.left != null) {
      root = root.left;
    }
    return root;
  }
}

void main() {
  BST bst = BST();
  bst.add(0);
  bst.add(2);
  bst.add(7);
  bst.add(44);
  bst.add(56);
  bst.add(1);
  bst.root = bst.delete(bst.root, 7); // Assigning the root node after deletion
  bst.inorderTraverse(bst.root);
}
