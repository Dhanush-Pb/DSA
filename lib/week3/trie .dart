// ignore_for_file: file_names
class TriNode {
  Map<String, TriNode> children = {};
  bool isendof = false;
}

class Trie {
  TriNode root = TriNode();

  void insert(String words) {
    TriNode current = root;
    for (int i = 0; i < words.length; i++) {
      String char = words[i];
      current.children.putIfAbsent(char, () => TriNode());
      current = current.children[char]!;
    }
    current.isendof = true;
  }

  bool startwith(String prefix) {
    TriNode node = root;
    for (String char in prefix.split('')) {
      if (!node.children.containsKey(char)) {
        return false;
      }
      node = node.children[char]!;
    }
    return true;
  }

  List<String> prefix(String prefix) {
    List<String> result = [];
    TriNode node = root;
    for (String char in prefix.split('')) {
      if (!node.children.containsKey(char)) {
        return result;
      }
      node = node.children[char]!;
    }
    prefixheler(node, prefix, result);
    return result;
  }

  void prefixheler(TriNode node, String curentprefix, List<String> results) {
    if (node.isendof) {
      results.add(curentprefix);
    }
    for (String char in node.children.keys) {
      prefixheler(node.children[char]!, curentprefix + char, results);
    }
  }
}

void main() {
  // Create an instance of the Trie class
  Trie trie = Trie();

  // Insert words into the trie
  trie.insert("Apple");
  trie.insert("cat");

  print(trie.startwith("cat"));
  print(trie.prefix("ca"));
}
