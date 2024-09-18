import 'package:flutter/material.dart'; 
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  //list image
  final List<String> imgList = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXHEdGBhl7Q7J4Dg0ZPVIOFmWEV6NC7cDYVQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzJvZ_g51p6zSiRl_XdeJYbJICRhsn0dMdkw&s',
    'https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/radarmalang/2022/10/Jasa-Desain-Interior-Terbaik-di-Jakarta-Dekoruma.jpg'
  ];

  // search controller
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Search Bar
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
            child: Form(
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: searchController,
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                  SizedBox(width: 10), // space antara search bar & tombol
                  ElevatedButton(
                    onPressed: () {
                      // Action ketika tombol ditekan
                      // WIP
                    },
                    child: const Text('Search'),
                  ),
                ],
              ),
            ),
          ),

          // Carousel Slider
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blueAccent, width: 3),
              borderRadius: BorderRadius.circular(15),
            ),
            padding: EdgeInsets.all(8),
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
              ),
              items: imgList.map((item) {
                return Container(
                  child: Center(
                    child: Image.network(item, fit: BoxFit.cover, width: 1000),
                  ),
                );
              }).toList(),
            ),
          ),

          // GridView 
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // jumlah column
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.7, // Menentukan proporsi setiap item
              ),
              padding: const EdgeInsets.all(10),
              itemCount: 12, // jumlah item(card)
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 7, 7),
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: NetworkImage('https://cdn.mos.cms.futurecdn.net/A6KXUcY8DTPFBLNzNbzUWd-768-80.jpg.webp'),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
