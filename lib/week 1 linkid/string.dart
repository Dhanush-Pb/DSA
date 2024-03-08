// String reverseString(String str) {
//   if (str.isEmpty) {
//     return str;
//   }
//   return reverseString(str.substring(1)) + str[0];
// }

// void main() {
//   String original = "hello";
//   String reversed = reverseString(original);
//   print("Original String: $original");
//   print("Reversed String: $reversed");
// }

String reverse(String str) {
  if (str.isEmpty) {
    return str;
  }
  return reverse(str.substring(1)) + str[0];
}

void main() {
  String revers = reverse('haai');
  print(revers);
}
