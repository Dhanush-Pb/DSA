class node {
  dynamic? data;
  node? next;

  node(this.data);
}

class stack {
  node? top = null;

  void push(dynamic data) {
    node newnode = node(data);
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

  void show() {
    node? temp = top;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  stack st = stack();
  st.push("D");
  st.push("H");
  st.push("A");
  st.push("N");
  st.push("U");

  st.show();
}
