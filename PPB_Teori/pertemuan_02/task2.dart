void main() {
  List<Map<String, dynamic>> listMahasiswa = [
    {
    "nama": "John Doe",
    "ipk": 3.88,
    "isMarried": false,
    },
    {
    "nama": "Andi Doe",
    "ipk": 3.78,
    "isMarried": true,
    },
    {
    "nama": "Budi Doe",
    "ipk": 3.68,
    "isMarried": true,
    }
  ];
   // variabel untuk menghitung jumlah mahasisawa sudah menikah
   int jmlMarried = 0;

   // Looping untuk menghitung jumlah mahasiswa yang sudah menikah
   for (var mahasiswa in listMahasiswa){
    if (mahasiswa['isMarried']){
      jmlMarried++;
    }
   }
   print("Jumlah mahasiswa yang sudah menikah: $jmlMarried Mahasiswa");
}