import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jelajah Wisata',
      home: pageWisataBanyumas(),
    );
  }
}

class pageWisataBanyumas extends StatelessWidget {
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
            'Jelajah Wisata',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 42, 200, 179),
      ),

      // Widget CustomScrollView
      body: CustomScrollView(
        slivers: [
          // Sliver AppBar
          SliverAppBar(
            expandedHeight: 80,
            pinned: true, // Agar ketika di scroll tidak menghilang / di freeze
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Rekomendasi Wisata",
                style: TextStyle(
                  fontSize: 22,
                  color: const Color.fromRGBO(4, 142, 123, 1),
                ),
              ),
            ),
          ),

          // Sliver List
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Card(
                  color: const Color.fromARGB(255, 196, 255, 247),
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(
                        Wisata[index]['nama']!,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Image.network(
                        Wisata[index]['gambar']!,
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          Wisata[index]['deskripsi']!,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          // Aksi ketika tombol diklik
                        },
                        child: const Text(
                          'Kunjungi Sekarang',
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 231, 244, 248),
                        ),
                      ),
                    ],
                  ),
                );
              },
              childCount: Wisata.length,
            ),
          ),
        ],
      ),
    );
  }
}