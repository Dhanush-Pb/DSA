class node {
  String data;

  node? left, right;

  node(this.data);
}

class BST {
  node? root;

  void add(String data) {
    node newnode = node(data);
    if (root == null) {
      root = newnode;
    } else {
      node? temp = root;
      while (temp != null) {
        if (data == temp.data) {
          return;
        } else {
          if (data.length > temp.data.length) {
            if (temp.right == null) {
              temp.right = newnode;
              return;
            } else {
              temp = temp.right;
            }
          } else if (data.length < temp.data.length) {
            temp.left = newnode;
            return;
          } else {
            temp = temp.left;
          }
        }
      }
    }
  }

  findlargest(node? root) {
    while (root!.right != null) {
      root = root.right;
    }
    return root.data;
  }

  indrotr(node? root) {
    print('');
    indrotravesel(root);
  }

  indrotravesel(node? root) {
    if (root != null) {
      indrotravesel(root.left);
      print(root.data);
      indrotravesel(root.right);
    }
  }

  secondlargestword(node? root) {
    if (root!.right == null && root.left != null) {
      return findlargest(root.left);
    }
    if (root.right != null &&
        root.right!.left == null &&
        root.right!.right == null) {
      return root.data;
    }
    return secondlargestword(root.right);
  }
}

void main() {
  BST bst = BST();
  bst.add('APPle');
  bst.add('Bananana');
  bst.add('orange');
  bst.add('watermelone');
  bst.indrotr(bst.root);
  print('${bst.findlargest(bst.root)} it is the first largest');
  print('${bst.secondlargestword(bst.root)} it is second largest');
}



























// void main() {
//   Bst bst = Bst();

//   bst.add(99);
//   bst.add(150);
//   bst.add(70);
//   bst.add(23);
//   bst.add(79);
//   bst.add(24);
//   bst.add(22);
//   bst.add(87);
//   bst.add(75);
//   bst.add(210);
//   bst.add(180);
//   bst.add(170);
//   bst.add(175);
//   bst.add(90);
//   bst.add(88);
//   bst.add(11);
//   bst.add(3);
//   bst.add(1);
//   bst.add(2);
//   bst.add(14);

//   bst.search(2);

//   bst.delete(bst.root, 210);

//   bst.isbstornot(bst.root);

//   print('${bst.secondlargest(bst.root)} is largest');
//   bst.indro(bst.root);
// }
