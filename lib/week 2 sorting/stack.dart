class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class stack {
  Node? top = null;

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
    } else {
      top = top?.next;
    }
  }

  void printf() {
    Node? temp = top;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void midvaluedelete() {
    Node? temp = top;
    Node? temp2 = top;
    Node? prv;

    while (temp2 != null && temp2.next != null) {
      prv = temp;
      temp = temp?.next;
      temp2 = temp2.next?.next;
    }
    if (prv != null) {
      prv.next = temp?.next;
    } else {
      top = temp?.next;
    }
  }

  void duplicatedele() {
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

  void sum() {
    int sum = 0;
    Node? temp = top;
    while (temp != null) {
      sum = sum + temp.data!;
      temp = temp.next;
    }
  }

  void reverse() {
    Node? temp = top, prv, next;
    while (temp != null) {
      next = temp.next;
      temp.next = prv;
      prv = temp;
      temp = next;
    }
    top = prv;
  }

  stack anoreversd() {
    stack reversestack = stack();

    Node? temp = top;
    while (temp != null) {
      reversestack.push(temp.data!);
      temp = temp.next;
    }
    return reversestack;
  }
}

void main() {
  stack st = stack();

  st.push(10);
  st.push(20);
  st.push(30);
  st.push(40);
  st.push(30);
  st.push(30);
  st.anoreversd().printf();
  // arr st = arr();
//   st.push(10);
//   st.push(20);
//   st.push(30);
//   st.push(40);

//   st.disply();
// }
}

//use arry

// class arr {
//   List<int> stack = [];
//   void push(int data) {
//     stack.add(data);
//   }

//   void pop() {
//     if (stack.isNotEmpty) {
//       stack.removeLast();
//     }
//   }

//   void disply() {
//     for (var i = 0; i < stack.length; i++) {
//       print(stack[i]);
//     }
//   }
// }
