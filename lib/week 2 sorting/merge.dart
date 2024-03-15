void main() {
  List<int> unsortedList = [
    1,
    3,
    5,
    6,
    7,
    100,
    30,
    200,
    15,
  ];
  List<int> sortedList = merge(unsortedList);
  print("Sorted List: $sortedList");
}

List<int> merge(List<int> arr) {
  if (arr.length <= 1) {
    return arr;
  }

  int midvalue = arr.length ~/ 2;
  List<int> left = arr.sublist(0, midvalue);
  List<int> right = arr.sublist(midvalue);

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
