// ignore_for_file: avoid_init_to_null, duplicate_ignore

import 'double.dart';

class Node {
  int? data;
  Node? next;

  Node(int data) {
    this.data = data;
  }
}

class Linkidlist {
  Node? head = null;
  // ignore: avoid_init_to_null
  Node? tail = null;

  void addnode(int data) {
    Node newnode = Node(data);

    if (head == null) {
      head = newnode;
    } else {
      tail?.next = newnode;
    }
    tail = newnode;
  }

  void printfunction() {
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void deletefunction(int data) {
    Node? temp = head, prv;
    while (temp != null && temp.data != data) {
      prv = temp;
      temp = temp.next;
    }
    prv?.next = temp?.next;
  }
//midvalue finfd

  Node? midd() {
    Node? temp = head;
    Node? temp2 = head;
    while (temp2 != null && temp2.next != null) {
      temp = temp?.next;
      temp2 = temp2.next?.next;
    }
    return temp;
  }
}

void main() {
  linkidlist list = linkidlist();
  list.addnode(10);
  list.addnode(20);
  list.addnode(30);
  list.addnode(40);
  list.addnode(50);
  list.printf();
  print('delet');
  list.mid();

  // print(list.mid()?.data);
}
