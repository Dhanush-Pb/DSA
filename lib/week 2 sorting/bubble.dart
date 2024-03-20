void insertionsort(List<int> arr) {
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
  List<int> unsor = [1, 0, 3, 5, 7, 8, 123, 345];

  insertionsort(unsor);
  print(unsor);
}
