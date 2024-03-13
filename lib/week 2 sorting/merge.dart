List<int> merge(List<int> arr) {
  if (arr.length <= 1) {
    return arr;
  }

  int midvaluue = arr.length ~/ 2;
  List<int> left = arr.sublist(0, midvaluue);
  List<int> right = arr.sublist(midvaluue);

  return mer(merge(left), merge(right));
}

List<int> mer(List<int> left, List<int> right) {
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
  result.addAll(left.sublist(leftindex));
  result.addAll(right.sublist(rightindex));
  return result;
}

void main() {
  List<int> unsortedList = [
    4,
    2,
    7,
    1,
    100,
    6,
    90,
    15,
  ];
  List<int> sortedList = merge(unsortedList);
  print("Sorted List: $sortedList");
}
