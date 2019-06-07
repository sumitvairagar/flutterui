import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyBottomBar {
  static BottomNavigationBar getBottomBar() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.home,
              color: Colors.black45,
            ),
            title: Text('Home')),
        BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.list,
              color: Colors.black45,
            ),
            title: Text('Trending')),
        BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.home,
              color: Colors.black45,
            ),
            title: Text('Settings')),
      ],
    );
  }
}
