void main() {
  List<Map<String, dynamic>> daftarMahasiswa = [
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

  // Membuat variabel untuk menyimpan jumlah IPK
  double jmlMhs = 0;

  // Looping untuk menghitung jumlah keseluruhan IPK
  for (var mahasiswa in daftarMahasiswa ){
    jmlMhs += mahasiswa['ipk'];
  }

  // Menghitung rata-rata IPK
  double rataIpk = jmlMhs / daftarMahasiswa.length;

  print("Rata Rata IPK: $rataIpk");
}