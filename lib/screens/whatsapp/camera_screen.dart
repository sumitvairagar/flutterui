import 'package:flutter/material.dart';
import 'package:you_playlist/models/video_item.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _buildVideoCard(VideoItemModel item) {
      return Text('HellO world');
    }

    return Container(
        child: ListView.builder(
      itemCount: 10,
      itemBuilder: (context, position) {
        return _buildVideoCard(
            VideoItemModel('New Video', 'Something', 'Some path'));
      },
    ));
  }
}
