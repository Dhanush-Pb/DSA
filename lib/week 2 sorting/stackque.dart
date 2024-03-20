// ignore: camel_case_types
class stackquea {
  // ignore: non_constant_identifier_names
  List<int> Stack1 = [];
  // ignore: non_constant_identifier_names
  List<int> Stack2 = [];

  void enque(int data) {
    Stack1.add(data);
  }

  int? dequea() {
    if (Stack2.isEmpty) {
      while (Stack1.isNotEmpty) {
        Stack2.add(Stack1.removeLast());
      }
    }
    return Stack2.removeLast();
  }

  void printf() {
    for (var i = 0; i < Stack1.length; i++) {
      print(Stack1[i]);
    }
  }
}

void main() {
  stackquea st = stackquea();
  st.enque(10);
  st.enque(20);
  st.enque(30);
  st.enque(40);
  st.enque(50);

  var dequeuedValue = st.dequea();
  print("Dequeued value: $dequeuedValue");

  st.printf();
}
