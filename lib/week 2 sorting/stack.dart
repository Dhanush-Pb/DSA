class Node {
  int? data;
  Node? next;
  Node(this.data);
}

// ignore: camel_case_types
class stack {
  Node? top;

  void push(int data) {
    Node newnode = Node(data);
    if (top == null) {
      top = newnode;
    } else {
      newnode.next = top;
      top = newnode;
    }
  }

  void pop() {
    if (top == null) {
      return;
    }
    top = top?.next;
  }

  void printff() {
    Node? temp = top;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  stack st = stack();
  st.push(10);
  st.push(20);
  st.push(30);
  st.push(40);
  st.printff();
  st.pop();
  st.pop();
  print('popig');
  st.printff();
}
