import 'package:flutter/material.dart';
import 'package:you_playlist/screens/list/list_screen.dart';
import 'package:you_playlist/screens/todo/todo.dart';
import 'package:you_playlist/screens/whatsapp/whats_app.dart';

class AllScreens extends StatelessWidget {
  static final String id = 'all';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Pages'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('Whats App'),
              onPressed: () {
                Navigator.pushNamed(context, WhatsAppScreen.id);
              },
            ),
            RaisedButton(
              child: Text('List View'),
              onPressed: () {
                Navigator.pushNamed(context, ListPage.id);
              },
            ),
            RaisedButton(
              child: Text('Todo'),
              onPressed: () {
                Navigator.pushNamed(context, Todo.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
