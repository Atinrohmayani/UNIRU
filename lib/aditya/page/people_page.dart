import 'package:flutter/material.dart';
import '/widget/navigation_drawer_widget.dart';

class PeoplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('Sertifikat'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
      );
}
