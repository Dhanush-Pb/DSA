List<int> quick(List<int> arr) {
  if (arr.length <= 1) {
    return arr;
  }

  int pivot = arr[arr.length ~/ 2];
  List<int> left = [];
  List<int> equal = [];
  List<int> right = [];

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
  List<int> arr = [
    1,
    100,
    400,
    300,
    200,
    2,
    5,
    6,
  ];
  quick(arr);
  List<int> qu = quick(arr);
  print(qu);
}

// List<int> quick(List<int> arr) {
//   if (arr.length <= 1) {
//     return arr;
//   }

//   int pivot = arr[arr.length ~/ 2];
//   List<int> left = [];
//   List<int> equal = [];
//   List<int> right = [];

//   for (var i = 0; i < arr.length; i++) {
//     if (arr[i] < pivot) {
//       left.add(arr[i]);
//     } else if (arr[i] == pivot) {
//       equal.add(arr[i]);
//     } else {
//       right.add(arr[i]);
//     }
//   }
//   return [...quick(left), ...equal, ...quick(right)];
// }
