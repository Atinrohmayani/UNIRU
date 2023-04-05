import 'package:flutter/material.dart';
import 'dart:math';


class kategori extends StatelessWidget {
  const kategori({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      leading: FlutterLogo(
        size: 20,
        ),
        title: Text("Text Judul"),
        centerTitle: false,
      
          
        ),
        body:  ListView.builder(
          padding: EdgeInsets.all(20),
          itemCount: 50,
          itemBuilder : (context, index) => Padding(
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
                      image: NetworkImage(
                        "https://picsum.photos/id/${870 + index}/200/300",
                      ),
                    ),
                  ),
                    child: Text("Hello ${index + 1}",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
              ),
            ),
          ),
        ),
      )
    );
  }
}