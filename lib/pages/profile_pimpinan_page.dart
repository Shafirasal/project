import 'package:flutter/material.dart';

class ProfilePimpinan extends StatelessWidget {
  const ProfilePimpinan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: const Center(
        child: Text('Ini adalah halaman Dosen Aktif'),
      ),
    );
  }
}