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
        body: const Center(
          child: MainContent(), // Memindahkan konten utama ke widget terpisah
        ),
      ),
    );
  }
}

// Widget untuk konten utama
class MainContent extends StatelessWidget {
  const MainContent({super.key}); // Constructor untuk widget ini

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipOval(
          child: Image(
            image: AssetImage('assets/logo1.jpg'),
            width: 75,
            height: 75, // Atur tinggi sama dengan lebar untuk membuatnya bulat
            fit: BoxFit.cover, // Menjaga proporsi gambar
          ),
        ),
        Text(
          'Welcome!',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Please log in to your account',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14.0,
            color: Color(0xFF6C6C6C), // Menggunakan kode warna hexadecimal
          ),
        ),
        const SizedBox(height: 20),
        LoginForm(), // Memanggil LoginForm di sini
      ],
    );
  }
}

// Widget untuk body LoginForm
class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
          16.0), // Optional: Tambahkan padding untuk estetika
      child: Form(
        child: Column(
          children: [
            //FORM
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'NIP',
                hintText: 'Masukkan NIP',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Masukkan Password',
                border: OutlineInputBorder(),
              ),
              onChanged: (String value) {
                // Tangani perubahan teks di sini
              },
              validator: (value) {
                return value!.isEmpty ? 'Masukkan password yang sesuai' : null;
              },
            ),

            //BUTTON
            const SizedBox(height: 20), // Tambahkan jarak di bawah TextField
            SizedBox(
              width: 320,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  // Logika untuk menangani login
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors
                      .blue, // Corrected: Use backgroundColor instead of primary
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0), // Rounded corners
                  ),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white, // Text color
                    fontSize: 18, // Adjust font size if needed
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
