void bubble(List<int> arr) {
  for (var i = 0; i < arr.length; i++) {
    for (var j = i + 1; j < arr.length; j++) {
      if (arr[j] < arr[i]) {
        int temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
      }
    }
  }
}

void main() {
  List<int> arr = [
    1,
    9,
    8,
    5,
    6,
    7,
    3,
    4,
    2,
  ];
  bubble(arr);
  print(arr);
}
















// void bubble(List<int> arr) {
//   for (var i = 0; i < arr.length - 1; i++) {
//     for (var j = i + 1; j < arr.length; j++) {
//       if (arr[i] > arr[j]) {
//         int temp = arr[i];

//         arr[i] = arr[j];
//         arr[j] = temp;
//       }
//     }
//   }
// }

// void main() {
//   List<int> arr = [10, 2, 5, 4, 56, 69, 45, 3, 4, 7, 8];
//   bubble(arr);

//   print(arr);
// }
