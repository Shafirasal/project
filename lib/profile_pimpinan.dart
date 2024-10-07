import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ProfileScreen(), // Memindahkan konten utama ke widget terpisah
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFEF5428),
        title: Text(
          'Profile',
          style: TextStyle(
            fontFamily: 'Poppins', // Jika Anda menggunakan font Poppins
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),

      body: const ProfileBody(), // Memanggil widget ProfileBody
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2, // Set the current index to the Profile tab
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

// Widget ProfileBody yang terpisah
class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Gambar Profil
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(
                'assets/profile.jpg'), // Ganti dengan path gambar Anda
          ),
        ),
        // Tombol "My Account"
        Card(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // Mengatur radius sudut
          ),
          elevation: 4, // Mengatur efek bayangan
          child: ListTile(
            title: Text(
              'My account',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFF6C6C6C), // Warna teks
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios,
                color: Color(0xFF6C6C6C)), // Ikon panah
            onTap: () {
              // Aksi ketika tombol "My account" ditekan
            },
          ),
        ),
        // Tombol "Logout"
        Card(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // Mengatur radius sudut
          ),
          elevation: 4, // Mengatur efek bayangan
          child: ListTile(
            title: Text(
              'Logout',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFF6C6C6C), // Warna teks
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios,
                color: Color(0xFF6C6C6C)), // Ikon panah
            onTap: () {
              // Aksi ketika tombol "Logout" ditekan
            },
          ),
        ),
      ],
    );
  }
}
