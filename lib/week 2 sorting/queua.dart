class Node {
  Node? next;
  int? data;

  Node(this.data);
}

// ignore: camel_case_types
class quea {
  Node? front;
  Node? rear;

  void enquea(int data) {
    Node newnode = Node(data);

    if (front == null) {
      front = rear = newnode;
    } else {
      rear?.next = newnode;
      rear = newnode;
    }
  }

  void dequea() {
    if (front == null) {
      return;
    } else {
      front = front?.next;
    }
  }

  void disply() {
    Node? temp = front;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  // quea q = quea();
  // q.enquea(10);
  // q.enquea(20);
  // q.enquea(40);
  // q.enquea(50);
  // q.enquea(60);

  // q.disply();

  list li = list();
  li.enquea(10);
  li.enquea(20);
  li.enquea(30);
  li.enquea(40);
  li.dequea();
  li.show();
}

// ignore: camel_case_types
class list {
  List<int> quea = [];

  int front = -1;
  int rear = -1;
  void enquea(int data) {
    if (front == -1) {
      front = rear = 0;
      quea.add(data);
    } else {
      rear++;
      quea.add(data);
    }
  }

  void dequea() {
    quea.removeAt(front);
    rear--;
  }

  void show() {
    for (var i = 0; i < quea.length; i++) {
      print(quea[i]);
    }
  }
}
