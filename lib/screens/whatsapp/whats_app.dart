import 'package:flutter/material.dart';
import 'package:you_playlist/screens/whatsapp/call_screen.dart';
import 'package:you_playlist/screens/whatsapp/camera_screen.dart';
import 'package:you_playlist/screens/whatsapp/chat_screen.dart';
import 'package:you_playlist/screens/whatsapp/status_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WhatsAppScreen extends StatefulWidget {
  static const String id = 'whatsapp';

  @override
  _WhatsAppScreenState createState() => _WhatsAppScreenState();
}

class _WhatsAppScreenState extends State<WhatsAppScreen>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, initialIndex: 1, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        elevation: 5,
        bottom: TabBar(
          controller: tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(icon: Icon(FontAwesomeIcons.home)),
            Tab(
                icon: Icon(
              FontAwesomeIcons.heart,
              color: Colors.white,
            )),
          ],
        ),
        actions: <Widget>[
          Icon(Icons.search),
          SizedBox(
            width: 5,
          ),
          Icon(Icons.more_vert)
        ],
      ),
      body: Container(
          child: TabBarView(controller: tabController, children: [
        HomeScreen(),
        FavoritesScreen(),
      ])),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
    );
  }
}
