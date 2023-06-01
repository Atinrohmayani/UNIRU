// ignore_for_file: unused_import
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class UiPage extends StatefulWidget {
  const UiPage({super.key});

  @override
  State<UiPage> createState() => _UiPageState();
}

class _UiPageState extends State<UiPage> {
  late int index;

  List showwidget = [
    ListView.builder(
      padding: EdgeInsets.all(20),
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                color: Colors.white,
              ),
            ],
          ),
        );
      },
    ),
    // Center(
    //   child: SingleChildScrollView(
    //     scrollDirection: Axis.vertical,
    //     child: Column(
    //       children: [
    //         Text("Category"),
    //         SizedBox(height: 40),
    //         Container(
    //           color: Colors.amber,
    //           width: 50,
    //           height: 50,
    //         ),
    //       ],
    //     ),
    //   ),
    // ),
    ListView.builder(
      padding: EdgeInsets.all(20),
      itemCount: 10,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: Container(
          padding: EdgeInsets.all(20),
          alignment: Alignment.bottomLeft,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            image: DecorationImage(
              //borderRadius: BorderRadius.circular(20),
              fit: BoxFit.cover,
              image:
                  NetworkImage("https://picsum.photos/id/${1 + index}/200/300"
                      // "https://picsum.photos/id/${870 + index}/200/300",
                      ),
            ),
          ),
          child: ElevatedButton(
            onPressed: () {},
            child: Text("Public speaking"),
            style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 42, 55, 72),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                )),
          ),
        ),
      ),
    ),

    Center(
      child: Text("Sertificate"),
    ),
    Center(
      child: Text("Profile"),
    ),
  ];

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
