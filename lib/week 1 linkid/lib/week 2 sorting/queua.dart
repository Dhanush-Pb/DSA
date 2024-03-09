// ignore_for_file: non_constant_identifier_names, camel_case_types

class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class quea {
  Node? front;
  Node? rear;

  void enquea(int data) {
    Node Newnode = Node(data);

    // ignore: prefer_conditional_assignment
    if (front == null) {
      front = rear = Newnode;
    }
    rear?.next = Newnode;
    rear = Newnode;
  }

  void dequea() {
    if (front == null) {
      print('empty');
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
  quea lis = quea();
  lis.enquea(10);
  lis.enquea(20);
  lis.enquea(30);
  lis.enquea(40);
  lis.printf();
  print('dequee');
  lis.dequea();
  lis.printf();
}
