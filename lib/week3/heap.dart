// ignore: camel_case_types
class minheap {
  List<int> heap = [];

  void insert(List<int> arr) {
    for (var i = 0; i < arr.length; i++) {
      heap.add(arr[i]);
      heapup();
    }
  }

  void heapup() {
    int currentindex = heap.length - 1;
    while (currentindex > 0) {
      int parentindex = (currentindex - 1) ~/ 2;

      if (heap[currentindex] < heap[parentindex]) {
        swap(currentindex, parentindex);
        currentindex = parentindex;
      } else {
        break;
      }
    }
  }

  void remove() {
    int minvalue = heap.removeLast();
    heap[0] = minvalue;

    heapdouwn(0);
  }

  void heapdouwn(int currentindex) {
    int minvalue = currentindex;

    int leftindex = 2 * currentindex + 1;
    int rightindex = 2 * currentindex + 2;
    if (rightindex < heap.length && heap[rightindex] < heap[minvalue]) {
      minvalue = rightindex;
    }
    if (leftindex < heap.length && heap[leftindex] < heap[minvalue]) {
      minvalue = leftindex;
    }
    if (currentindex != minvalue) {
      swap(currentindex, minvalue);
      heapdouwn(minvalue);
    }
  }

  void swap(int currentindex, int parentindex) {
    int temp = heap[currentindex];
    heap[currentindex] = heap[parentindex];
    heap[parentindex] = temp;
  }
}

void main() {
  minheap min = minheap();
  min.insert([12, 45, 3, 67, 8, 9, 3, 2]);
  print(min.heap);
}
