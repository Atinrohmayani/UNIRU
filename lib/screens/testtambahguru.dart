import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class testtambahguru extends StatefulWidget {
  @override
  _testtambahguruState createState() => _testtambahguruState();
}

class _testtambahguruState extends State<testtambahguru> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Guru'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showAddGuruDialog(context);
          },
          child: Text('Add'),
        ),
      ),
    );
  }

  void _showAddGuruDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Guru'),
          content: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: _firstNameController,
                  decoration: InputDecoration(labelText: 'First Name'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter first name';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _lastNameController,
                  decoration: InputDecoration(labelText: 'Last Name'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter last name';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _descriptionController,
                  decoration: InputDecoration(labelText: 'Description'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter description';
                    }
                    return null;
                  },
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _addGuru();
                  Navigator.of(context).pop();
                }
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }

  void _addGuru() {
    String firstName = _firstNameController.text;
    String lastName = _lastNameController.text;
    String description = _descriptionController.text;

    // Simpan data guru ke Firestore
    FirebaseFirestore.instance.collection('guru').add({
      'namaDepan': '$firstName',
      'namaBelakang': '$lastName',
      'deskripsi': description,
    });
  }
}
