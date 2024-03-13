class node {
  dynamic key;
  dynamic data;
  node? next;
  node(this.key, this.data);
}

class hashtable {
  List<node?>? table;

  int size;

  hashtable(this.size) {
    table = List.generate(size, (index) => null);
  }

  void add(dynamic key, dynamic data) {
    int index = key.hashCode % size;
    node? newnode = node(key, data);
    if (table?[index] == null) {
      table?[index] = newnode;
    } else {
      newnode.next = table?[index];
      table?[index] = newnode;
    }
  }

  void get(dynamic key) {
    int index = key.hashCode % size;
    node? temp = table?[index];

    while (temp != null) {
      if (temp.key == key) {
        print('the $key is ${temp.data}');
      }
      temp = temp.next;
    }
  }

  void disply() {
    for (var i = 0; i < table!.length; i++) {
      node? temp = table?[i];
      while (temp != null) {
        print('${temp.key} is  ${temp.data} its index position is $i ');
        temp = temp.next;
      }
    }
  }

  void remove(dynamic key) {
    int index = key.hashCode % size;
    node? temp = table?[index], prv;
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
    node? temp = table?[index];

    while (temp != null) {
      if (temp.key == key) {
        temp.data = newdata;
        print("${temp.key} is ${temp.data}");
      }
      temp = temp.next;
    }
  }
}

void main() {
  hashtable hash = hashtable(6);
  hash.add("Name", "dhanush");
  hash.add("age", "19");
  hash.add("district", "Kannur");
  hash.add("State", "kerala");
  hash.update("Name", "yoyo");
}
