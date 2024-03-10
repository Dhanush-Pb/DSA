void insertion(List<int> arr) {
  for (var i = 0; i < arr.length - 1; i++) {
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
  List<int> arr = [10, 2, 1, 52, 4, 36, 58, 74, 7];
  insertion(arr);
  print(arr);
}



















 // ignore: camel_case_types
// class sort {
//   insertion(List<int> arr) {
//     for (var i = 0; i < arr.length - 1; i++) {
//       int current = arr[i];
//       int j = i - 1;
//       while (j >= 0 && arr[j] > current) {
//         arr[j + 1] = arr[j];
//         j--;
//       }
//       arr[j + 1] = current;
//     }
//     return arr;
//   }
// }

// void main() {
//   List<int> arr = [
//     105,
//     1,
//     2,
//     35,
//     8,
//     4,
//     63,
//     78,
//     95,
//   ];
//   sort sr = sort();

//   List<int> sor = sr.insertion(arr);
//   print(sor);
// }
