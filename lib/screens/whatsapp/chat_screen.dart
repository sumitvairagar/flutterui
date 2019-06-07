import 'package:flutter/material.dart';
import 'package:you_playlist/models/chat_item.dart';

class FavoritesScreen extends StatefulWidget {
  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  List<ChatItem> chats = ChatItem.dummyData;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, position) {
        return Column(
          children: <Widget>[
            Divider(
              height: 5,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                foregroundColor: Theme.of(context).primaryColor,
                backgroundImage: NetworkImage(chats[position].avtarUrl),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    chats[position].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    chats[position].time,
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  )
                ],
              ),
              subtitle: Container(
                child: Text(chats[position].message),
              ),
            )
          ],
        );
      },
    );
  }
}
