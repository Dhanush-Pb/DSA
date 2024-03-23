// ignore_for_file: camel_case_types

void main() {
  minheap heap = minheap();
  heap.insert([
    50,
    40,
    30,
    20,
    10,
  ]);

  print(heap.heap);
}

class minheap {
  List<int> heap = [];

  void insert(List<int> arr) {
    for (var i = 0; i < arr.length; i++) {
      heap.add(arr[i]);
      hepup();
    }
  }

  void hepup() {
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
    heapdown(0);
  }

  heapdown(int currentindex) {
    int minvalu = currentindex;
    int leftindex = 2 * currentindex + 1;
    int rightindex = 2 * currentindex + 2;
    if (leftindex < heap.length && heap[leftindex] < heap[minvalu]) {
      minvalu = leftindex;
    }
    if (rightindex < heap.length && heap[rightindex] < heap[minvalu]) {
      minvalu = rightindex;
    }
    if (currentindex != minvalu) {
      swap(currentindex, minvalu);
      heapdown(minvalu);
    }
  }

  void swap(int currentindex, int parentindex) {
    int temp = heap[currentindex];
    heap[currentindex] = heap[parentindex];
    heap[parentindex] = temp;
  }
}
