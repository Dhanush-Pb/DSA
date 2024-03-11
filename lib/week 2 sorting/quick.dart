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
  List<int> arr = [200, 500, 600, 100, 900, 300, 700, 400, 800];
  quick(arr);
  List<int> qu = quick(arr);
  print(qu);
}
























// List<int> quicksort(List<int> arr) {
//   if (arr.length <= 1) {
//     return arr;
//   }

//   int pivot = arr[arr.length ~/ 2];
//   List<int> left = [];
//   List<int> equal = [];
//   List<int> right = [];

//   for (var num in arr) {
//     if (num < pivot) {
//       left.add(num);
//     } else if (num == pivot) {
//       equal.add(num);
//     } else {
//       right.add(num);
//     }
//   }
//   return [...quicksort(left), ...equal, ...quicksort(right)];
// }

// void main() {
//   List<int> arr = [10, 2, 3, 50, 42, 39, 1, 0, 58, 95, 7];
//   List<int> sort = quicksort(arr);
//   print(sort);
// }
