class Node {
  int? data;
  Node? next;

  Node(this.data);
}

// ignore: camel_case_types
class quea {
  Node? front;
  Node? rear;

  void enquea(int data) {
    Node? newnode = Node(data);

    if (front == null) {
      front = rear = newnode;
    } else {
      rear?.next = newnode;
      rear = newnode;
    }
  }

  void deque() {
    if (front == null) {
      return;
    }

    front = front?.next;
  }

  void printff() {
    Node? temp = front;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void sum() {
    int sum = 0;

    Node? temp = front;
    while (temp != null) {
      sum = sum + temp.data!;
      temp = temp.next;
    }
    print(' sum is $sum');
  }

  void mid() {
    Node? temp = front;
    Node? temp2 = front;

    while (temp2 != null && temp2.next != null) {
      temp = temp?.next;
      temp2 = temp2.next?.next;
    }
    return print('mid is${temp!.data}');
  }
}

void main() {
  // quea q = quea();

  // q.enquea(10);
  // q.enquea(20);
  // q.enquea(30);
  // q.sum();
  // q.printff();
  qta m = qta();
  m.enque(10);
  m.enque(20);
  m.enque(30);
  m.enque(40);
  m.deque();
  m.printq();

  print('sdfgasdg');
}

// ignore: camel_case_types
class qta {
  List<int> arry = [];
  int front = -1;
  int rear = -1;

  void enque(int data) {
    if (front == -1) {
      front = rear = 0;
      arry.add(data);
    } else {
      rear++;
      arry.add(data);
    }
  }

  void deque() {
    if (front == -1) {
      return;
    }
    if (front == rear) {
      front = rear = -1;
    } else {
      front++;
    }
  }

  void printq() {
    for (int i = front; i <= rear; i++) {
      print(arry[i]);
    }
  }
}
