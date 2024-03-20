void insertionSort(List<int> arr) {
  for (var i = 0; i < arr.length; i++) {
    int current = arr[i];
    int j = i - 1;
    while (j >= 0 && arr[j] > current) {
      arr[j + 1] = arr[j];
      j--;
    }
    arr[j + 1] = current;
  }
}

void main() {
  List<int> arr = [1, 200, 3, 400, 500, 1000];

  insertionSort(arr);
  print(arr);
}
