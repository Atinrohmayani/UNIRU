import 'package:flutter/material.dart';

class kotak1 extends StatelessWidget {
  const kotak1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 20, right: 20),
        scrollDirection: Axis.vertical,
        child: Column(
          
          children: [
            Container(
              width: double.infinity,
              height: 200,
              
              child: Center(
                
                child: Text(
                  "Ini halaman kotak 1",
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
    );
  }
}