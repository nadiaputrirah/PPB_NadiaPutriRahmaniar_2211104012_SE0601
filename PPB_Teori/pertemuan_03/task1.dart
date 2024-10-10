import 'dart:math';

void createMatrix(int a, int b) {
  List<List<int>> matrix = List.generate(a, (_) => List.generate(b, (_) => Random().nextInt(10) + 1));

  print("Matriks ${a}x${b}:");
  for (var row in matrix) {
    print(row.join(" "));
  }

  List<List<int>> transpose = List.generate(b, (i) => List.generate(a, (j) => matrix[j][i]));

  print("\nHasil transpose yaitu : ");
  for (var row in transpose) {
    print(row.join(" "));
  }
}

void main() {
  createMatrix(6, 2);
}