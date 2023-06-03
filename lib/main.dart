import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

import '/data/custom_user.dart';
import '/screens/HomePage.dart';
import '/services/auth.dart';
import '/services/updatealldata.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

void main() async {
  // initializing firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  await updateAllData();

  // running home Widget
  return runApp(Home());
}

// it just returns basic settings for MaterialApp
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Stream provider for constantly getting the user data
    return StreamProvider<CustomUser?>.value(

      // value is the stream method declared in "services.auth.dart"
        value: AuthService().streamUser,
        initialData: null,

        // MaterialApp
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: HomePage()));
  }
}


class Guru {
  final String name;
  final String matpel;
  final String imagePath;
  final String description;

  Guru(this.name, this.matpel, this.imagePath, this.description);
}

final List<Guru> guruList = [
  Guru('Guru 1', 'Matpel 1', 'Assets/Images/guru/test.jpg', 'deskripsi'),
  Guru('Guru 2', 'Matpel 2', 'Assets/Images/guru/guru2.png', 'deskripsi guru...'),
  Guru('Guru 3', 'Matpel 3', 'Assets/Images/guru/guru3.png', 'deskripsi guru...'),
  Guru('Guru 4', 'Matpel 4', 'Assets/Images/guru/guru4.png', 'deskripsi guru...'),
  Guru('Guru 5', 'Matpel 5', 'Assets/Images/guru/guru5.png', 'deskripsi guru...'),
  Guru('Guru 6', 'Matpel 6', 'Assets/Images/guru/guru6.png', 'deskripsi guru...'),
  Guru('Guru 7', 'Matpel 7', 'Assets/Images/guru/guru7.png', 'deskripsi guru...'),
  Guru('Guru 8', 'Matpel 8', 'Assets/Images/guru/guru8.png', 'deskripsi guru...'),
  Guru('Guru 9', 'Matpel 9', 'Assets/Images/guru/guru9.png', 'deskripsi guru...'),
  Guru('Guru 10', 'Matpel 10', 'Assets/Images/guru/guru10.png', 'deskripsi guru...'),
];

final List<String> kategori = [
  'Kategori 1',
  'Kategori 2',
  'Kategori 3',
  'Kategori 4',
  'Kategori 5',
  'Kategori 6',
  'Kategori 7',
  'Kategori 8',
  'Kategori 9',
  'Kategori 10',
  // Tambahkan mata pelajaran lainnya jika diperlukan
];
