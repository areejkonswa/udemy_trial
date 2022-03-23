import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('myTitle'),
        actions: [
          IconButton(
            icon: Icon(Icons.notification_important_outlined),
            onPressed: () {
              print('ay zeft');
            },
          ),
          IconButton(
            icon: Icon(Icons.access_alarm_outlined),
            onPressed: () => print("ay khara"),
          ),
        ],
      ),
      // safe area is for adapting the size of the screen and make any text included start right after the first bar
      body: Column(
        children: [
          Text(
            'data1',
            style: TextStyle(
              color: Colors.white,
              backgroundColor: Colors.amber,
              fontSize: 30.0,
            ),
          ),
          Text('data2'),
          Text('data3'),
        ],
      ),
    );
  }
}
