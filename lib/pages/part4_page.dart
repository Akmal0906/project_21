import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
class Part4Page extends StatefulWidget {
static final String id='part4_page';

  @override
  State<Part4Page> createState() => _Part4PageState();
}

class _Part4PageState extends State<Part4Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('new page'),
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: IconThemeData(size: 20),
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        backgroundColor: Colors.purple,
        foregroundColor: Colors.yellowAccent,
        shape: CircleBorder(),
        children: [
          SpeedDialChild(
            child: Icon(Icons.accessibility,color: Colors.white,),
            backgroundColor: Colors.greenAccent,
            label: 'person',
          ),
        ],
      ),
    );
  }
}
