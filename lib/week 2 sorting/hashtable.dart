// ignore_for_file: camel_case_types

class Node {
  dynamic key;
  dynamic data;
  Node? next;
  Node(this.key, this.data);
}

class hashtable {
  List<Node?>? table;
  int size;

  hashtable(this.size) {
    table = List.generate(size, (index) => null);
  }

  void add(dynamic key, dynamic data) {
    int index = key.hashCode % size;
    Node newnode = Node(key, data);

    if (table == null) {
      table?[index] = newnode;
    } else {
      newnode.next = table?[index];
      table?[index] = newnode;
    }
  }

  void get(dynamic key) {
    int index = key.hashCode % size;
    Node? temp = table?[index];
    while (temp != null) {
      if (temp.key == key) {
        print('the $key is ${temp.data}');
      }
      temp = temp.next;
    }
  }

  void displyall() {
    for (var i = 0; i < table!.length; i++) {
      Node? temp = table?[i];
      while (temp != null) {
        print('${temp.key} is ${temp.data}  index position is $i ');
        temp = temp.next;
      }
    }
  }

  void remove(dynamic key) {
    int index = key.hashCode % size;
    Node? temp = table?[index], prv;
    while (temp != null && temp.key != key) {
      prv = temp;
      temp = temp.next;
    }
    if (temp?.key == key && prv == null) {
      table?[index] = temp?.next;
    } else {
      prv?.next = temp?.next;
    }
  }

  void update(dynamic key, dynamic newdata) {
    int index = key.hashCode % size;
    Node? temp = table?[index];
    while (temp != null) {
      if (temp.key == key) {
        temp.data = newdata;
        print('$key is updated');
      }
      temp = temp.next;
    }
  }
}

void main() {
  hashtable hash = hashtable(29);
  hash.add("Name", "Dhanush");
  hash.add("Age", "19");
  hash.add("state", "kerala");
  hash.add("dist", "kannur");
  hash.add("phone", "994878");
  hash.update("Name", "heyyyyy");
  hash.displyall();
}
