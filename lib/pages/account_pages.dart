import 'package:flutter/material.dart';

class AccountPages extends StatelessWidget {
  const AccountPages({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Profil Picture di dalam Stack dan lingkaran
          Column(
            children: [
              const SizedBox(height: 40),
              Center(
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.grey[300],
                      backgroundImage: const NetworkImage(
                          'https://static1.cbrimages.com/wordpress/wp-content/uploads/2019/12/KonoSuba-Megumin.jpg?q=50&fit=crop&w=767&h=431&dpr=1.5'), // URL gambar profil
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Nama Pengguna
              const Text(
                "Katateki",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "NatanaelxAnonim@gmail.com",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),

          // Pengaturan Akun dengan ListTile dan Icon di dalam Card
          Card(
            elevation: 4,
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text('Informasi Akun'),
                  onTap: () {},
                ),
                const Divider(height: 1),
                ListTile(
                  leading: const Icon(Icons.lock),
                  title: const Text('Keamanan'),
                  onTap: () {},
                ),
                const Divider(height: 1),
                ListTile(
                  leading: const Icon(Icons.notifications),
                  title: const Text('Notifikasi'),
                  onTap: () {},
                ),
                const Divider(height: 1),
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text('Pengaturan Lainnya'),
                  onTap: () {},
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          // Bagian lain jika diperlukan
          Card(
            elevation: 4,
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.help_outline),
                  title: const Text('Bantuan'),
                  onTap: () {},
                ),
                const Divider(height: 1),
                ListTile(
                  leading: const Icon(Icons.info_outline),
                  title: const Text('Tentang'),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
