class Node {
  int? data;
  Node? next;
  Node(this.data);
}

// ignore: camel_case_types
class stack {
  Node? top;

  void push(int data) {
    Node? newnode = Node(data);
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

  void duplicateremove() {
    Node? temp = top;
    while (temp != null) {
      Node runner = temp;
      while (runner.next != null) {
        if (temp.data == runner.next?.data) {
          runner.next = runner.next?.next;
        } else {
          runner = runner.next!;
        }
      }
      temp = temp.next;
    }
  }
}

void main() {
  stack st = stack();
  st.push(20);

  st.push(10);
  st.push(20);
  st.push(30);
  st.push(40);

  st.duplicateremove();
  st.printff();

  // Stack st = Stack();
  // st.push(10);
  // st.push(20);
  // st.push(30);
  // st.push(40);
  // st.pop();
  // st.printdst();
}

//use arry

class Stack {
  List<int> arry = [];
  void push(int data) {
    arry.add(data);
  }

  void pop() {
    if (arry.isNotEmpty) {
      arry.removeLast();
    }
  }

  void printdst() {
    for (var i = 0; i < arry.length; i++) {
      print(arry[i]);
    }
  }
}
