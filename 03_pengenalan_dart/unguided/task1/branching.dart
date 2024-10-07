import 'dart:io';

void main() {
  // Meminta input dari user
  print('Masukkan nilai:');
  String? userInput = stdin.readLineSync();  // Baca input sebagai string

  // Coba parsing input ke int, jika gagal gunakan -1
  int nilai = int.tryParse(userInput ?? '') ?? -1;

  // Panggil fungsi evaluasiNilai dan simpan hasilnya
  String evaluasiResult = evaluasiNilai(nilai);

  // Cek apakah hasil evaluasi valid
  if (evaluasiResult.isNotEmpty) {
    print('$nilai merupakan $evaluasiResult');  // Tampilkan hasil evaluasi
  } else {
    print('Nilai tidak valid');  // Jika input tidak valid
  }
}

// Fungsi untuk mengevaluasi nilai
String evaluasiNilai(int nilai) {
  if (nilai > 70) {
    return 'Nilai A';  // Jika nilai lebih dari 70
  } else if (nilai > 40 && nilai <= 70) {
    return 'Nilai B';  // Jika nilai antara 41 dan 70
  } else if (nilai > 0 && nilai <= 40) {
    return 'Nilai C';  // Jika nilai antara 1 dan 40
  } else {
    return '';  // Jika nilai tidak valid
  }
}
