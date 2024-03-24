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
      heapfyup();
    }
  }

  heapfyup() {
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
    int minvalu = heap.removeLast();
    heap[0] = minvalu;
    hepafydown(0);
  }

  void hepafydown(int curentindex) {
    int minvalu = curentindex;

    int left = 2 * curentindex + 1;
    int right = 2 * curentindex + 2;
    if (left < heap.length && heap[left] < heap[minvalu]) {
      minvalu = left;
    }
    if (right < heap.length && heap[right] < heap[minvalu]) {
      minvalu = right;
    }
    if (curentindex != minvalu) {
      swap(curentindex, minvalu);
      hepafydown(minvalu);
    }
  }

  void swap(int currentindex, int parentindex) {
    int temp = heap[currentindex];
    heap[currentindex] = heap[parentindex];
    heap[parentindex] = temp;
  }
}
