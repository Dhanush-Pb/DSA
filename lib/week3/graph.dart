class Graph {
  Map<int, List<int>> graph = {};

  void insert(int vertix, int edge, [bool isendofword = false]) {
    if (!graph.containsKey(vertix)) {
      graph[vertix] = [];
    }
    if (!graph.containsKey(edge)) {
      graph[edge] = [];
    }
    graph[vertix]!.add(edge);
    if (isendofword) {
      graph[edge]!.add(vertix);
    }
  }

  showedges(int vertix) {
    if (graph.containsKey(vertix)) {
      print(graph[vertix]);
    }
  }

  bfs(int vertix) {
    Set<int> visited = {};
    List<int> quea = [];
    visited.add(vertix);
    quea.add(vertix);

    while (quea.isNotEmpty) {
      int current = quea.removeAt(0);
      for (var i in graph[current]!) {
        if (!visited.contains(i)) {
          visited.add(i);
          quea.add(i);
        }
      }
    }
    print(visited);
  }

  dfs(int vertix) {
    if (graph.containsKey(vertix)) {
      Set<int> visited = {};
      dfshealper(vertix, visited);
      print(visited);
    }
  }

  dfshealper(int vertix, Set<int> visited) {
    visited.add(vertix);
    for (var i in graph[vertix]!) {
      if (!visited.contains(i)) {
        dfshealper(i, visited);
      }
    }
  }

  disply() {
    graph.forEach((key, vertix) {
      print('$key:$vertix');
    });
  }
}

void main() {
  Graph grap = Graph();
  grap.insert(10, 14);
  grap.insert(10, 15);
  grap.insert(10, 16);
  grap.insert(10, 17);
  grap.insert(10, 18);
  grap.insert(17, 19);
  grap.insert(17, 20);
  grap.disply();
}

// class Graph {
//   Map<int, List<int>> graph = {};

//   void insert(int vertix, int edge, [bool isbidimensinol = false]) {
//     if (!graph.containsKey(vertix)) {
//       graph[vertix] = [];
//     }
//     if (!graph.containsKey(edge)) {
//       graph[edge] = [];
//     }
//     graph[vertix]!.add(edge);
//     if (isbidimensinol) {
//       graph[edge]!.add(vertix);
//     }
//   }

//   showedges(int vertix) {
//     if (graph.containsKey(vertix)) {
//       print(graph[vertix]);
//     } else {
//       print('nothinng');
//     }
//   }

//   bfs(int vertix) {
//     Set<int> visited = {};
//     List<int> quea = [];

//     visited.add(vertix);
//     quea.add(vertix);
//     while (quea.isNotEmpty) {
//       int current = quea.removeAt(0);

//       for (int i in graph[current]!) {
//         if (!visited.contains(i)) {
//           visited.add(i);
//           quea.add(i);
//         }
//       }
//     }
//     print(visited);
//   }

//   dfs(int vertix) {
//     if (graph.containsKey(vertix)) {
//       Set<int> visited = {};
//       dfshelper(vertix, visited);
//       print(visited);
//     }
//   }

//   dfshelper(int vertix, Set<int> visited) {
//     visited.add(vertix);
//     for (var i in graph[vertix]!) {
//       if (!visited.contains(i)) {
//         dfshelper(i, visited);
//       }
//     }
//   }

//   void disply() {
//     graph.forEach((key, vertix) {
//       print('$key:$vertix');
//     });
//   }
// }
