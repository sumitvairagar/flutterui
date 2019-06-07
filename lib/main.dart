import 'package:flutter/material.dart';
import 'package:you_playlist/all_screens.dart';
import 'package:you_playlist/screens/category.dart';
import 'package:you_playlist/screens/home.dart';
import 'package:you_playlist/screens/list/list_screen.dart';
import 'package:you_playlist/screens/todo/todo.dart';
import 'package:you_playlist/screens/whatsapp/whats_app.dart';

import 'screens/gmail/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xff075e54),
        accentColor: Color(0xff25d366),
      ),
      initialRoute: AllScreens.id,
      routes: {
        AllScreens.id: (_) => AllScreens(),
        Todo.id: (_) => Todo(),
        GmailHomeScreen.id: (_) => GmailHomeScreen(),
        WhatsAppScreen.id: (_) => WhatsAppScreen(),
        ListPage.id: (_) => ListPage(),
        HomeScreen.id: (context) => HomeScreen(),
        CategoryScreen.id: (context) => CategoryScreen(),
      },
    );
  }
}
