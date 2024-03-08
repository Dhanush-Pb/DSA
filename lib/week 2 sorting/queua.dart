// ignore_for_file: camel_case_types, prefer_initializing_formals

class Node {
  int? data;
  Node? next;
  Node(int data) {
    this.data = data;
  }
}

class qeuea {
  Node? front;
  Node? rear;

  void adenquea(int data) {
    Node newnode = Node(data);
    // ignore: prefer_conditional_assignment
    if (front == null) {
      front = rear = newnode;
    }
    rear?.next = newnode;
    rear = newnode;
  }

  void dequea() {
    if (front == null) {
      return print('empty');
    }
    front = front?.next;
    if (front == null) {
      rear = null;
    }
  }

  void printf() {
    Node? temp = front;

    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  qeuea add = qeuea();
  add.adenquea(10);
  add.adenquea(20);
  add.adenquea(30);
  add.adenquea(40);
  add.printf();
  add.dequea();
  print('dequed');
  add.printf();
}
