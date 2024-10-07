import 'dart:io';

void main() {
  // Inputan dari user
  stdout.write('Masukkan Bilangan Bulat: ');
  int? bill = int.parse(stdin.readLineSync()!);

  // Cek inputan bilangan dari user
  bool is_prime(int bill) {
    if (bill <= 1) {
      // Bilangan prima tidak boleh sama dengan atau kurang dari 1
      return false; 
    }

    for (int i = 2; i <= bill ~/ 2; i++) {
      if (bill % i == 0) {
        // Jika ada pembagi selain satu dan dirinya sendiri, maka itu bukan prima
        return false;
      }
    }
    // Jika hanya ada satu pembagi dan dirinya sendiri = bilangan prima
    return true; 
  }

  // Menentukan sebuah bilangan prima atau bukan
  if (is_prime(bill)) {
    print('$bill adalah bilangan prima');
  } else {
    print('$bill bukan bilangan prima');
  }
}