import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:testting/screens/text_box.dart';



class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  @override
  _ProfilePageState createState() => _ProfilePageState();
}


class _ProfilePageState extends State<ProfilePage> {
  // user
    final currentUser = FirebaseAuth.instance.currentUser!;

    // edit field
    Future<void> editField(String field) async {

    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Profile Page'),
        backgroundColor: Colors.grey[900],
      ),
      body: ListView(
          children: [
            const SizedBox(height: 50),

            // profile pic
            const Icon(
                Icons.person,
                size: 72,
            ),
          
          const SizedBox(height: 10),
            
            // user email
            Text(
              currentUser.email!,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey[700]),
            ),

           

            // user details
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(
                'My Details',
                style: TextStyle(color: Colors.grey[600]),
                ),
              ),

            // username
              MyTextBox(
                text: '',
                sectionName: 'username',
                onPressed: () => editField('username'),
                ),
            // bio
              MyTextBox(
                text: '',
                sectionName: 'bio',
                onPressed: () => editField('bio'),
                ),

             const SizedBox(height: 50),

             // user posts
               Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(
                'My Post',
                style: TextStyle(color: Colors.grey[600]),
                ),
              ),
          ],
         
        ),
      );
    
  }
}
