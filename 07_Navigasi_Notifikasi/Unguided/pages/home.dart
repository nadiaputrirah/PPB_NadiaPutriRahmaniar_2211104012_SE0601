import 'package:flutter/material.dart';
import '../models/product.dart';
import 'product_detail.dart';

class ProductListPage extends StatelessWidget {
  final List<Product> products = [
    Product(
      id: 1,
      nama: 'Chunky Hand-Knit Pink Bag',
      harga: 300000.00,
      imageurl:
          'https://lapetitecrocheterie.com/cdn/shop/files/IMG_2537.jpg?v=1686520598&width=713',
      deskripsi:
          'Perfectly handmade using tube yarn, the chunky purse measures 10''wide and 8''tall.',
    ),
    Product(
      id: 2,
      nama: 'Chunky Hand-Knit Pink Bag',
      harga: 300000.00,
      imageurl:
          'https://lapetitecrocheterie.com/cdn/shop/files/IMG_2537.jpg?v=1686520598&width=713',
      deskripsi:
          'Perfectly handmade using tube yarn, the chunky purse measures 10''wide and 8''tall.',
    ),
    Product(
      id: 3,
      nama: 'Chunky Hand-Knit Pink Bag',
      harga: 300000.00,
      imageurl:
          'https://lapetitecrocheterie.com/cdn/shop/files/IMG_2537.jpg?v=1686520598&width=713',
      deskripsi:
          'Perfectly handmade using tube yarn, the chunky purse measures 10''wide and 8''tall.',
    ),
    Product(
      id: 4,
      nama: 'Chunky Hand-Knit Pink Bag',
      harga: 300000.00,
      imageurl:
          'https://lapetitecrocheterie.com/cdn/shop/files/IMG_2537.jpg?v=1686520598&width=713',
      deskripsi:
          'Perfectly handmade using tube yarn, the chunky purse measures 10''wide and 8''tall.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('La Petite Crocheterie')),
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (ctx, i) => ProductCard(products[i]),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade200,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
            child: Image.network(
              product.imageurl,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.nama,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                Text(
                  'Rp ${product.harga.toStringAsFixed(2)}',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
                SizedBox(height: 10), // Memberikan jarak antara teks dan tombol
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ProductDetailPage(product),
                            ),
                          );
                        },
                        child: Text('Shop Now'),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                5), // Mengatur border radius
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}