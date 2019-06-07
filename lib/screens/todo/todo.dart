import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Todo extends StatefulWidget {
  static const String id = 'todo';

  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = new ScrollController();
  }

  List<Color> colors = [Colors.teal, Colors.lightBlue, Colors.redAccent];

  _makeFirstsection() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            radius: 30,
            child: Icon(
              Icons.account_circle,
              size: 45.0,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Hello, Sumit.',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 40, color: Colors.white),
          ),
          SizedBox(
            height: 5,
          ),
          Text('Looks like you feel good.',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 15,
              )),
          Text('You have 3 class for today.',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 15,
              )),
        ],
      ),
    );
  }

  AppBar _makeAppbar(int index) {
    return AppBar(
      title: Center(
          child: Text(
        'Todo',
        style: TextStyle(
          fontSize: 20,
        ),
      )),
      backgroundColor: colors[index],
      elevation: 0.0,
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Icon(
            FontAwesomeIcons.search,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    int index = 0;

    return Scaffold(
      drawer: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Drawer(),
      ),
      backgroundColor: colors[index],
      appBar: _makeAppbar(index),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _makeFirstsection(),
            _makeCard(),
          ],
        ),
      ),
    );
  }

  _makeCard() {
    return Container(
      height: 300,
      child: ListView.builder(
        itemCount: 3,
        controller: scrollController,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, postion) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  width: 250,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(
                              Icons.home,
                              color: Colors.grey,
                            ),
                            Icon(
                              Icons.more_vert,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '9 Tasks',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Person',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 30),
                            ),
                            LinearProgressIndicator(
                              value: 50,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
