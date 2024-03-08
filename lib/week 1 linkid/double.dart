class Node {
  int? data;
  Node? next;

  Node(int data) {
    this.data = data;
  }
}

class linkidlist {
  Node? head = null;
  Node? tail = null;

  void addnode(int data) {
    Node newnode = Node(data);

    if (head == null) {
      head = newnode;
    } else {
      tail == null;
      tail?.next = newnode;
    }
    tail = newnode;
  }

  void printf() {
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void delete(int data) {
    Node? temp = head, prv;
    while (temp != null && temp.data != data) {
      prv = temp;
      temp = temp.next;
    }
    prv?.next = temp?.next;
    if (temp == head) {
      head = temp?.next;
    }
    if (temp == tail) {
      tail = prv;
    }
  }

  //insert
  void insert(int data, int afteer) {
    Node? temp = head;

    Node newnode = Node(data);

    while (temp != null && temp.data != afteer) {
      temp = temp.next;
    }
    newnode.next = temp?.next;
    temp?.next = newnode;
    if (temp == head) {
      temp?.next = newnode;
    }
    if (temp == tail) {
      tail?.next = newnode;
    }
    tail = newnode;
  }

  void duplicate() {
    Node? temp = head;
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

  //reevers
  void revers() {
    Node? temp = head, next, prv;
    while (temp != null) {
      next = temp.next;
      temp.next = prv;
      prv = temp;
      temp = next;
    }
    head = prv;
  }

  //mid
  Node? mid() {
    Node? temp = head;
    Node? temp2 = head;
    while (temp2 != null && temp2.next != null) {
      temp = temp?.next;
      temp2 = temp2.next?.next;
    }
    return temp;
  }

  //toarry
  List<int?> arry() {
    List<int?> ar = [];
    Node? temp = head;

    while (temp != null) {
      ar.add(temp.data);
      temp = temp.next;
    }
    return ar;
  }

  //
  void tolink() {
    List<int> my = [100, 200, 300, 400];
    for (int data in my) {
      addnode(data);
    }
  }
}

void main() {
  linkidlist list = linkidlist();
  list.addnode(10);
  list.addnode(20);
  list.addnode(40);
  list.addnode(30);

  list.printf();
  print('reversdgdrg');
}
