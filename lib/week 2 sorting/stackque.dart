// ignore_for_file: camel_case_types

class quinstack {
  List<int> stack1 = [];
  List<int> stack2 = [];

  void enque(int data) {
    stack1.add(data);
  }

  int deque() {
    if (stack2.isEmpty) {
      while (stack1.isNotEmpty) {
        stack2.add(stack1.removeLast());
      }
    }
    return stack2.removeLast();
  }

  int size() {
    return stack1.length + stack2.length;
  }
}

void main() {
  quinstack as = quinstack();
  as.enque(10);
  as.enque(20);
  as.enque(30);
  as.enque(40);
  print('deque is ${as.deque()}');
  print('deque is ${as.deque()}');
  print('deque is ${as.deque()}');
  print('deque is ${as.deque()}');
}
