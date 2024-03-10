class Node {
  dynamic data;

  dynamic key;
  Node? next;

  Node(this.key, this.data);
}

// ignore: camel_case_types
class hastable {
  List<Node?>? table;

  int size;

  hastable(this.size) {
    table = List.generate(size, (index) => null);
  }

  void add(dynamic key, dynamic data) {
    Node newnode = Node(key, data);
    int index = key.hashCode % size;
    if (table?[index] == null) {
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
        print('$key is ${temp.data}');
      }
      temp = temp.next;
    }
  }

  void disply() {
    for (var i = 0; i < table!.length; i++) {
      Node? temp = table?[i];
      while (temp != null) {
        print('${temp.key} is ${temp.data} index position is $i');
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

  void updatee(dynamic key, dynamic newdata) {
    int index = key.hashCode % size;
    Node? temp = table?[index];
    while (temp != null) {
      if (temp.key == key) {
        temp.data = newdata;
      }
      temp = temp.next;
    }
  }
}

void main() {
  hastable hash = hastable(12);
  hash.add("Name", "Dhanush");
  hash.add("age", "50");
  hash.add("state", "Kerala");
  hash.add("Phone", "9947");
  hash.add("adres", "kannur");
  hash.updatee("state", 'tamil');

  hash.disply();
}









































// class Node {
//   dynamic data;
//   Node? next;
//   dynamic key;
//   Node(this.key, this.data);
// }

// class hastable {
//   List<Node?>? table;
//   int size;

//   hastable(this.size) {
//     table = List.generate(size, (index) => null);
//   }

//   void add(dynamic key, dynamic data) {
//     int index = key.hashCode % size;
//     Node? newnode = Node(key, data);

//     if (table?[index] == null) {
//       table?[index] = newnode;
//     } else {
//       newnode.next = table?[index];
//       table?[index] = newnode;
//     }
//   }

//   void get(dynamic key) {
//     int index = key.hashCode % size;

//     Node? temp = table?[index];

//     while (temp != null) {
//       if (temp.key == key) {
//         print('the $key is ${temp.data}');
//       }
//       temp = temp.next;
//     }
//   }

//   void display() {
//     for (var i = 0; i < table!.length; i++) {
//       Node? temp = table?[i];
//       while (temp != null) {
//         print('${temp.data} its index position is $i');
//         temp = temp.next;
//       }
//     }
//   }

//   void remove(dynamic key) {
//     int index = key.hashCode % size;

//     Node? temp = table?[index], prv;
//     while (temp != null && temp.key != key) {
//       prv = temp;
//       temp = temp.next;
//     }
//     if (temp?.key == key && prv == null) {
//       table?[index] = temp?.next;
//       print('asdf');
//     } else {
//       prv?.next = temp?.next;
//       print('$key poyi');
//     }
//   }

//   void update(dynamic key, dynamic newdata) {
//     int index = key.hashCode % size;
//     Node? temp = table?[index];
//     while (temp != null) {
//       if (temp.key == key) {
//         temp.data = newdata;
//       }
//       temp = temp.next;
//     }
//   }
// }

// void main() {
//   hastable hash = hastable(5);

//   hash.add("Name", "Dhanush");
//   hash.add("Age", "20");
//   hash.add("adress", "Kannur");
//   hash.add("height", "169");
//   hash.update("Age", 100);
//   hash.remove("Age");
//   hash.display();
// }
  
  
  
  
  
  
  
  
  
  

 
 
 
 
 
 
 
 
 
 