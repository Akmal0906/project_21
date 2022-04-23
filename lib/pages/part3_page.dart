import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class Part3Page extends StatefulWidget {
  static final String id = 'part3_page';

  @override
  State<Part3Page> createState() => _Part3PageState();
}

class _Part3PageState extends State<Part3Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('page three'),
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: IconThemeData(size: 22),
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        onOpen: () => print('Opened'),
        onClose: () => print('Closed'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shape: CircleBorder(),
        children: [
          SpeedDialChild(
            backgroundColor: Colors.blueAccent,
            child: Icon(
              Icons.accessibility,
              color: Colors.white,
            ),
            label: 'First',
            labelStyle: TextStyle(fontSize: 15),
            onTap: () => print('Pressed button'),
          ),
          SpeedDialChild(
            backgroundColor: Colors.redAccent,
            child: Icon(
              Icons.brush,
              color: Colors.white,
            ),
            label: 'two',
            labelStyle: TextStyle(fontSize: 15),
            onTap: () => print('Pressed button'),
          ),
          SpeedDialChild(
            backgroundColor: Colors.green,
            child: Icon(
              Icons.email,
              color: Colors.white,
            ),
            label: 'Email',
            labelStyle: TextStyle(fontSize: 15),
            onTap: () => print('Pressed button'),
          ),
        ],
      ),
    );
  }
}
