// // ignore: camel_case_types
// class stqu {
//   List<int> stack1 = [];
//   List<int> stack2 = [];

//   void enque(int data) {
//     stack1.add(data);
//   }

//   int dequea() {
//     if (stack2.isEmpty) {
//       while (stack1.isNotEmpty) {
//         stack2.add(stack1.removeLast());
//       }
//     }

//     return stack2.removeLast();
//   }

//   void printf() {
//     for (var i = 0; i < stack1.length; i++) {
//       print(' ${stack1[i]}');
//     }
//   }

//   void print2() {
//     for (var i = 0; i < stack2.length; i++) {
//       print(stack2[i]);
//     }
//   }

// ignore_for_file: camel_case_types

void main() {
  stackiq st = stackiq();
  st.enqua(100);
  st.enqua(200);
  st.enqua(300);
  st.enqua(400);

  st.printff();
}

class stackiq {
  List<int> stack = [];
  List<int> stack2 = [];

  void enqua(int data) {
    stack.add(data);
  }

  int dequea() {
    if (stack2.isEmpty) {
      while (stack.isNotEmpty) {
        stack2.add(stack.removeLast());
      }
    }
    return stack2.removeLast();
  }

  void printff() {
    for (var i = 0; i < stack.length; i++) {
      print(stack[i]);
    }
  }
}
