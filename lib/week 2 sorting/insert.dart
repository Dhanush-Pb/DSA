import 'package:dsa/week%202%20sorting/selection.dart';

void insertion(List<int> arr) {
  for (var i = 0; i < arr.length - 1; i++) {
    int current = i;
    int j = i - 1;
    while (j >= 0 && arr[j] > current) {
      arr[j + 1] = j;
      j--;
    }
    arr[j + 1] = current;
  }
}

void main() {
  List<int> arr = [4, 5, 8, 0, 6, 1, 2];

  selection(arr);
  print(arr);
}
