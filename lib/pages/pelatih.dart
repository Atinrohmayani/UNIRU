

// ignore_for_file: unused_import

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';




class TeacherHomePage extends StatefulWidget {
  @override
  _TeacherHomePageState createState() => _TeacherHomePageState();
}

class _TeacherHomePageState extends State<TeacherHomePage> {

  @override
  Widget build(BuildContext context) {
   

    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        title: Text(
          "",
          style: TextStyle(
              color: Colors.black, fontFamily: "Roboto", fontSize: 22),
        ),
        backgroundColor: Colors.white,
        actions: [
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text("Pelatih",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
          ),
          IconButton(
            icon: Icon(
              Icons.logout,
              color: Colors.black87,
              size: 30,
            ),
            onPressed: () async {
             
            },
          ),
        ],
      ),
      
     
    );
  }
}
