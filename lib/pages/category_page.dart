import 'package:flutter/material.dart';
final List<Map<String, String>> categories = [
  {'title': 'Fotografi', 'image': 'https://papershootcamera.com/cdn/shop/collections/Paper_Shoot_Camera_April_2024_Shoot_Hi-Res-4-WillCrooks.jpg?v=1715956752'},
  {'title': 'Desain Interior', 'image': 'https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/radarmalang/2022/10/Jasa-Desain-Interior-Terbaik-di-Jakarta-Dekoruma.jpg'},
  {'title': 'Seni Digital', 'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzJvZ_g51p6zSiRl_XdeJYbJICRhsn0dMdkw&s'},
  {'title': 'Kuliner', 'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWNNmpUFULNE6BtJ3TxIKa5U6F9_vnl6CAxA&s'},
  {'title': 'Travel', 'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDCy4i-sCq0eOXc0q0qxf14tM3Sm_ReI1ykg&s'},
  {'title': 'Fashion', 'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGAqJdFwiuRn-Ot7XpfqZ2jtTDNhJ0JenyFQ&s'},
  {'title': 'Kesehatan', 'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWtjDLyhNsFHQhxkR0dEbs4R1PZ2uRmijpeA&s'},
  {'title': 'Teknologi', 'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXHEdGBhl7Q7J4Dg0ZPVIOFmWEV6NC7cDYVQ&s'},
];

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          itemCount: categories.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Menentukan jumlah kolom
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 1.1, // Menentukan proporsi setiap item
          ),
          itemBuilder: (context, index) {
            return Card(
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: InkWell(
                onTap: () {
                  // Aksi ketika kategori ditekan
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Gambar Kategori
                    Flexible(
                      flex: 3,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(15.0),
                        ),
                        child: SizedBox(
                          height: 150,
                          child: Image.network(
                            categories[index]['image']!,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        )
                      ),
                    ),
                    // Nama Kategori
                    Flexible(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            categories[index]['title']!,
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
