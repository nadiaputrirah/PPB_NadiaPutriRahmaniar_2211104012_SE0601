import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: pageWisata(),
    );
  }
}

class pageWisata extends StatelessWidget {
  // Daftar rekomendasi tempat wisata
  final List<Map<String, String>> Wisata = [
    {
      'nama': 'Limpakuwus',
      'deskripsi':
          'Hutan Pinus Limpakuwus merupakan hutan yang berada di kawasan wisata Baturaden, yang berada di ketinggian 750 mdpl. Tempat ini cocok menjadi tempat wisata.',
      'gambar':
          'https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p3/27/2024/02/06/Wisata-Hutan-Pinus-Limpakuwus-Banyumas-4032453637.jpg',
    },
    {
      'nama': 'Goa Lawa',
      'deskripsi':
          'Goa alam yang terletak di bawah permukaan tanah di lereng gunung Slamet ini memiliki panjang 1300m. Dengan ornamen interior alami berupa batuan goa, aliran air.',
      'gambar':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSKtOqmHw7vrq0JoUaHds_hu8VC4lTrQl01Q&s',
    },
    {
      'nama': 'Pantai Menganti',
      'deskripsi':
          'Pantai Menganti merupakan sebuah pantai yang berlokasi di Desa Karangduwur, Kecamatan Ayah, Kabupaten Kebumen, Jawa Tengah.',
      'gambar':
          'https://assets.pikiran-rakyat.com/crop/0x0:0x0/1200x675/photo/2024/10/12/2248760998.jpg'
    },
    {
      'nama': 'Telaga Warna',
      'deskripsi':
          'Telaga Warna adalah salah satu objek wisata yang berada di kawasan Dataran Tinggi Dieng, Kabupaten Wonosobo, Jawa Tengah. ',
      'gambar':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSy9mT4WjxT4ks5_zf5zfqrymsxBYt1CdPpfw&s'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Jelajah Wisata'
            ,
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor:  const Color.fromARGB(255, 42, 200, 179),
      ),
      body: ListView.builder(
        itemCount: Wisata.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Text(
                    Wisata[index]['nama']!,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Image.network(
                    Wisata[index]['gambar']!,
                    height: 200,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 10),
                  Text(
                    Wisata[index]['deskripsi']!,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                    },
                    child: Text(
                      'Kunjungi Sekarang',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 22, 116, 104),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}