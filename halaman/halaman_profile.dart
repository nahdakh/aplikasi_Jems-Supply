import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/profile_picture.png'), // Ganti dengan path gambar profil Anda
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                'Kelompok 2',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Divider(),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              subtitle: Text('user@example.com'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Nomor Telepon'),
              subtitle: Text('+62 123 4567 890'),
            ),
            ListTile(
              leading: Icon(Icons.location_city),
              title: Text('Alamat'),
              subtitle: Text('Jl. Example No. 123, Jakarta, Indonesia'),
            ),
          ],
        ),
      ),
    );
  }
}
