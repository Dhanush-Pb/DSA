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
  List<int> arr = [
    10,
    5,
    2,
    1,
    6,
    0,
    74,
    7,
    23,
    69,
  ];
  selection(arr);
  print(arr);
}
