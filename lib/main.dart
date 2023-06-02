import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

import 'package:testting/data/custom_user.dart';
import 'package:testting/screens/HomePage.dart';
import 'package:testting/services/auth.dart';
import 'package:testting/services/updatealldata.dart';
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


