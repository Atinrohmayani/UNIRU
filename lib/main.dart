import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'pages/GuestHomePage.dart';
import 'pages/HomePage.dart';

void main() {
  runApp(UniruApp());
}

class UniruApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Uniru',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class Guru {
  final String name;
  final String field;

  Guru(this.name, this.field);
}

final List<Guru> guruList = [
  Guru('Guru 1', 'Bidang 1'),
  Guru('Guru 2', 'Bidang 2'),
  Guru('Guru 3', 'Bidang 3'),
  Guru('Guru 4', 'Bidang 4'),
  Guru('Guru 5', 'Bidang 5'),
  Guru('Guru 6', 'Bidang 6'),
  Guru('Guru 7', 'Bidang 7'),
  Guru('Guru 8', 'Bidang 8'),
  Guru('Guru 9', 'Bidang 9'),
  Guru('Guru 10', 'Bidang 10'),
];
