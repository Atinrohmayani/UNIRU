// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import '../main.dart';
import 'GuestHomePage.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Colors.yellow, // Mengubah warna latar belakang menjadi kuning
        leading: IconButton(
          icon: Icon(Icons.cancel),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Cari guru...',
          ),
          onSubmitted: (value) {
            // Aksi ketika pencarian di-submit
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.filter_list),
            onPressed: () {
              // Aksi ketika tombol filter ditekan
            },
          ),
        ],
      ),
      body: Center(
        child: Text('Halaman Pencarian'),
      ),
    );
  }
}