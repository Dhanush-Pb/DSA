class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class quea {
  Node? front = null;
  Node? rear = null;

  void enquea(int data) {
    Node newnode = Node(data);
    if (front == null) {
      front = rear = newnode;
    } else {
      rear?.next = newnode;
      rear = newnode;
    }
  }

  void display() {
    Node? temp = front;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void revers() {}
}

void main() {
  quea q = quea();

  q.enquea(10);

  q.enquea(20);

  q.enquea(30);

  q.enquea(40);
  q.display();
}
