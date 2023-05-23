// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'kotak1.dart';


class UiPage extends StatefulWidget {
  const UiPage({super.key});

  @override
  State<UiPage> createState() => _UiPageState();
}

class _UiPageState extends State<UiPage> {

  BuildContext get context;

  late int index;

  List showwidget = [
    SingleChildScrollView(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 150,
                  color: Color.fromARGB(255, 81, 70, 166),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Container(
                width: 150,
                height: 150,
                color: Color.fromARGB(255, 81, 70, 166),
              ),
              SizedBox(width: 20,),
              
              Expanded(
                child: Container(
                  width: 150,
                  height: 150,
                  color: Color.fromARGB(255, 81, 70, 166),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Expanded(
                child: Container(
                  width: 150,
                  height: 150,
                  color: Color.fromARGB(255, 81, 70, 166),
                ),
              ),
              SizedBox(width: 20,),
              Expanded(
                child: Container(
                  width: 150,
                  height: 150,
                  color: Color.fromARGB(255, 81, 70, 166),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Expanded(
                child: Container(
                  width: 150,
                  height: 150,
                  color: Color.fromARGB(255, 81, 70, 166),
                ),
              ),
              SizedBox(width: 20,),
              
              Expanded(
                child: Container(
                  width: 150,
                  height: 150,
                  color: Color.fromARGB(255, 81, 70, 166),
                ),
              ),
            ],
          ),
        ],
      ),
    ),

    SingleChildScrollView(
      padding: EdgeInsets.only(left: 20, right: 20),
      scrollDirection: Axis.vertical,
      child: Column(
        
        children: [
          Container(
            width: double.infinity,
            height: 200,
            
            child: Center(
              
              child: Text(
                "Category",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
            ),
            
          ),
          SizedBox(height: 30,),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.white,
            child: Center(
              child: Text(
                "isi",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(height: 30,),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.white,
            child: Center(
              child: Text(
                "isi",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(height: 30,),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.white,
            child: Center(
              child: Text(
                "isi",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(height: 30,),
          
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.white,
            child: Center(
              child: Text(
                "isi",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    ),

    Center(
      child: Text("Sertificate"),
    ),

    SingleChildScrollView(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.amber,
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(40),
                    // ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Expanded(
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.amber,
                ),
              ),
              SizedBox(width: 20,),
              Expanded(
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.amber,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  ];

  BuildContext get cobacoba => context;

  @override
  void initState() {
    index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 181, 136),
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Home",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[350],
      ),
      body: showwidget[index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[800],
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.purple,
        elevation: 0,
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_rounded),
            label: "Assignments",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article_rounded),
            label: "Sertificate",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}