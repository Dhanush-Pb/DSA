// class binary {
//   void search(List<int> arr, int target) {
//     // ignore: unused_local_variable
//     int low = 0;
//     // ignore: unused_local_variable
//     int heigh = arr.length - 1;
//     while (low <= heigh) {
//       int mid = (low + heigh) ~/ 2;
//       int midvalue = arr[mid];
//       if (midvalue == target) {
//         return print('$target find in index $mid');
//       }
//       if (midvalue < target) {
//         low = mid + 1;
//       } else {
//         heigh = mid - 1;
//       }
//     }
//   }
// }

// void main() {
//   List<int> num = [10, 20, 30, 40, 50];
//   int target = 20;
//   binary bin = binary();
//   bin.search(num, target);
// }

//rewustion string

String wor(String str) {
  if (str.isEmpty) {
    return str;
  }
  return wor(str.substring(1)) + str[0];
}

void main() {
  String word = 'Dhanush';
  String rev = wor(word);
  print(rev);
}

// String word(String str) {
//   List<String> char = str.split('');
//   char = char.reversed.toList();
//   return char.join('');
// }

// void main() {
//   String wor = "dhanush";
//   String rev = word(wor);
//   print(rev);
// }


























// void main() {
//   List<int> arr = [10, 20, 30, 10];
//   Set duplicate = {};
//   for (var i = 0; i < arr.length; i++) {
//     for (var j = i + 1; j < arr.length; j++) {
//       if (arr[i] == arr[j]) {
//         duplicate.add(arr[j]);
//         print(duplicate);
//       }
//     }
//   }
// }

// targe

// void main() {
//   List<int> same = [10, 20, 30, 40, 50];
//   int sum = 0;
//   for (var i = 0; i < same.length; i++) {
//     sum = sum + same[i];
//   }
//   print(sum);
// }
