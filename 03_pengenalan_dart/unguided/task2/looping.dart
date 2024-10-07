import 'dart:io';

void main() {
  // Inputan dari user
  stdout.write('Masukkan panjang angka piramida : ');
  int? length = int.parse(stdin.readLineSync()!);

  // Menggunakan perulangan For
   for (int i = 1; i <= length; i++) {
    // Cetak spasi
    stdout.write(' ' * (length - i));
    
    // Cetak bintang
    stdout.write('*' * (2 * i - 1));
    
    // Pindah baris baru
    print('');
  }
}