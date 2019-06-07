import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAppBar {
  static AppBar getAppBar(String title) {
    return AppBar(
      elevation: 10,
      backgroundColor: Colors.black38,
      title: Row(
        children: <Widget>[
          Icon(
            FontAwesomeIcons.youtube,
            color: Colors.red,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '$title',
              style: TextStyle(letterSpacing: 1, fontWeight: FontWeight.w700),
            ),
          )
        ],
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Icon(
            Icons.videocam,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Icon(
            Icons.search,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Icon(
            Icons.account_circle,
          ),
        ),
      ],
    );
  }
}
