class Node {
  Node? next;
  dynamic data;
  String? key;
  Node(this.key, this.data);
}

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
}

void main() {
  hashtable has = hashtable(10);
  has.add('A', 1);
  has.add('B', 20);
  has.add('c', 33);
  has.get('');
  has.getall();
}
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 // class Node {
//   dynamic data;
//   Node? next;
//   String? key;
//   Node(this.key, this.data);
// }

// // ignore: camel_case_types
// class hashtable {
//   List<Node?>? table;
//   int size;

//   hashtable(this.size) {
//     table = List.generate(size, (index) => null);
//   }

//   add(String key, dynamic data) {
//     int index = key.hashCode % size;
//     Node newnode = Node(key, data);
//     if (table?[index] == null) {
//       table?[index] = newnode;
//     } else {
//       newnode.next = table?[index];
//       table?[index] = newnode;
//     }
//   }

//   get(String key) {
//     int index = key.hashCode % size;
//     Node? temp = table?[index];

//     while (temp != null) {
//       if (temp.key == key) {
//         print('the value found in index $index ${temp.data}');
//         return;
//       }
//       temp = temp.next;
//     }
//   }

//   getAll() {
//     for (var i = 0; i < table!.length; i++) {
//       Node? temp = table?[i];
//       while (temp != null) {
//         print('position of ${temp.data} index $i');
//         temp = temp.next;
//       }
//     }
//   }
// }

// void main() {
//   hashtable has = hashtable(8);
//   has.add('A', 10);
//   has.add('b', 20);
//   has.add('c', 30);
//   has.add('d', 40);
//   has.add('e', 50);
//   has.get('c');
//   has.getAll();
// }

