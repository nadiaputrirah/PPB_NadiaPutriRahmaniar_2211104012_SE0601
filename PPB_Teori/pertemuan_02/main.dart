// void main() {
//   String namaMahasiswa; //Deklarasi
//   double ipk = 3.98; //Inialisasi

//   bool isMarried = true;
//   bool isMan =  true;
//   bool isStudent = false;

//   int umur = 20;
//   int jumlahRuangan = 100;
//   int jumlahSaudara = 2;

//   double tinggiBadan = 165.5;
//   double nilai = 3.87;

//   String hewan = "Kucing";

//   print(hewan);

//   // var, dynamic 
//   var nama = "Hanifa";
//   dynamic alamat = "Jalan Sidomulyo";

//   // perbedaan var dan dynamic
//   // dynamic = jika nilai tipe datanya berbeda, maka otomatis akan mengikuti
//   // var = ika nilai tipe datanya berbeda, maka akan eror

//   print(nama);
//   print(alamat);

// }

// void main () {
//   // List<String> daftarMahasiswa = ['1', 'Aisyah', 'Cahya'];
//   List<dynamic> daftarBiodata = [
//     16, 
//     'Zizi', 
//     ['Cahya', 9.8, "Berenang"]
//     ];

//   print(daftarBiodata [2][2]);
//   // print(daftarMahasiswa);
// }

void main()
{
  List<Map<String, dynamic>> Biodata = [
    {
      "Nama : ": "Nadia Putri Rahmaniar",
      "Umur : ": 20,
      "IPK": 3.94,
      "Hobi : ": ["Menonton"]
    },
    {
      "Nama Ortu : ": "Mama",
      "Pekerjaan : ": "Swasta",
      "Usia": 40,
    },
  ];
  print(Biodata);
  print(Biodata[1]["Pekerjaan"]);
}