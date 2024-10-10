void searchValueInList(int value) {
  List<List<int>> list = [
    [5, 10, 15],
    [2, 4, 6, 8],
    [1, 4, 9, 16, 25],
    [3, 4, 5, 6, 7, 8],
  ];

  print("Berikut isi list:");
  for (var row in list) {
    print(row.join(" "));
  }

  bool found = false;
  print("\nBilangan yang dicari : $value");
  for (int i = 0; i < list.length; i++) {
    for (int j = 0; j < list[i].length; j++) {
      if (list[i][j] == value) {
        print("yey $value berada di: baris ${i + 1} kolom ${j + 1}");
        found = true;
      }
    }
  }

  if (!found) {
    print("yah $value tidak ditemukan dalam list.");
  }
}

void main() {
  searchValueInList(2);
  searchValueInList(5);
}