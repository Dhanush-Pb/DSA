void selection(List<int> arr) {
  for (var i = 0; i < arr.length - 1; i++) {
    int min = i;
    for (var j = i + 1; j < arr.length; j++) {
      if (arr[j] < arr[min]) {
        j = min;
      }
    }

    if (min != i) {
      int temp = arr[i];
      arr[i] = arr[min];
      arr[min] = temp;
    }
  }
}

void main() {
  List<int> arr = [10, 25, 4, 036, 8, 95, 450, 7];
  selection(arr);
  print(arr);
}
