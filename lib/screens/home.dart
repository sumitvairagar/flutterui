import 'package:flutter/material.dart';
import 'package:you_playlist/models/video_item.dart';
import 'package:you_playlist/widgets/app_bar.dart';
import 'package:you_playlist/widgets/bottom_bar.dart';
import 'package:you_playlist/widgets/video_card.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home';

  var videos = [
    VideoItemModel(
        "Gordon Ramsay Cooked For Vladimir Putin",
        "The Late Show with Stephen Colbert\n1.1M views.2 weeks ago",
        "https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80"),
    VideoItemModel(
        "Hailee Steinfeld, Alesso - Let Me Go",
        "Hailee Steinfeld\n57M views.8 months ago",
        "https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80"),
    VideoItemModel(
        "Charlie Puth - Look At Me Now",
        "Lyricwood\n4.7M views.4 months ago",
        "https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.getAppBar('Home'),
      body: Center(
        child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, position) {
              return Column(
                children: <Widget>[
                  VideoCard(item: videos[position]),
                ],
              );
            }),
      ),
      bottomNavigationBar: MyBottomBar.getBottomBar(),
    );
  }
}
