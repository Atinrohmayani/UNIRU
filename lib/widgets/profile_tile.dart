// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:testting/data/accounts.dart';

class Profile extends StatelessWidget {
  Account user;

  Profile({required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          SizedBox(width: 15),
          CircleAvatar(
            backgroundImage:
            AssetImage("${user.userDp}"),
          ),
          SizedBox(
            width: 10,
          ),
          Text(user.firstName! + " " + user.lastName!)
        ],
      ),
    );
  }
}
