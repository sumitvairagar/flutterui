import 'package:flutter/material.dart';
import 'package:you_playlist/models/video_item.dart';

class VideoCard extends StatelessWidget {
  final VideoItemModel item;

  const VideoCard({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2),
      height: 200,
      width: 200,
      child: Column(
        children: <Widget>[
          Image.network(
            item.imagePath,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: ListTile(
              title: Text(item.title),
              subtitle: Text('This is some title below it'),
            ),
          )
        ],
      ),
    );
  }
}
