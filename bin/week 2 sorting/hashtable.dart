class Node {
  Node? next;
  dynamic data;
  String? key;
  Node(this.key, this.data);
}

// ignore: camel_case_types
class hashtable {
  List<Node?>? table;

  int size;
  hashtable(this.size) {
    table = List.generate(size, (index) => null);
  }

  void add(String key, dynamic data) {
    int index = key.hashCode % size;
    print(index);

    Node newnode = Node(key, data);
    if (table?[index] == null) {
      table?[index] = newnode;
    } else {
      newnode.next = table?[index];
      table?[index] = newnode;
    }
  }

  get(String key) {
    int index = key.hashCode % size;
    Node? temp = table?[index];
    while (temp != null) {
      if (temp.key == key) {
        print('value $key founded in index $index :${temp.data} ');
        return;
      }
      temp = temp.next;
    }
  }

  getall() {
    for (var i = 0; i < table!.length; i++) {
      Node? temp = table?[i];
      while (temp != null) {
        print('${temp.data} position is $i');
        temp = temp.next;
      }
    }
  }

  void remove(String key) {
    int index = key.hashCode % size;
    Node? temp = table?[index], prv;
    while (temp != null && temp.key != key) {
      prv = temp;
      temp = temp.next;
    }
    if (prv == null) {
      table?[index] = temp?.next;
    } else {
      prv.next = temp?.next;
    }
  }
}

void main() {
  hashtable has = hashtable(10);
  has.add('Name', "Dhanush");
  has.add('Age', 10);
  has.add('From', "kannur");
  has.get('');

  has.remove('Age');
  has.getall();
}
