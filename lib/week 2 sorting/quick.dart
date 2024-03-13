List<int> quick(List<int> arr) {
  if (arr.length <= 1) {
    return arr;
  }

  int pivot = arr[arr.length ~/ 2];

  List<int> left = [];
  List<int> right = [];
  List<int> equal = [];
  for (int num in arr) {
    if (num < pivot) {
      left.add(num);
    } else if (num == pivot) {
      equal.add(num);
    } else {
      right.add(num);
    }
  }
  return [...quick(left), ...equal, ...quick(right)];
}

void main() {
  List<int> arr = [1, 100, 400, 300, 200, 0, 5, 9, 5, 1, 005];
  quick(arr);
  List<int> qu = quick(arr);
  print(qu);
}
