List<int> mergesort(List<int> arr) {
  if (arr.length <= 1) {
    return arr;
  }

  int midvalue = arr.length ~/ 2;
  List<int> left = arr.sublist(0, midvalue);
  List<int> right = arr.sublist(midvalue);

  return merg(mergesort(left), mergesort(right));
}

List<int> merg(List<int> left, List<int> right) {
  List<int> result = [];
  int leftindex = 0;
  int rightindex = 0;
  while (leftindex < left.length && rightindex < right.length) {
    if (left[leftindex] < right[rightindex]) {
      result.add(left[leftindex]);
      leftindex++;
    } else {
      result.add(right[rightindex]);
      rightindex++;
    }
  }

  result.addAll(mergesort(left).sublist(leftindex));
  result.addAll(mergesort(right).sublist(rightindex));
  return result;
}

void main() {
  List<int> unsortedList = [1, 3, 7, 9, 2, 3, 100, 50, 35];
  List<int> sortedList = mergesort(unsortedList);
  print("Sorted List: $sortedList");
}
