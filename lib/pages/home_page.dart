import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
class HomePage extends StatefulWidget {
 static final String id='home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Flutter course'),
      ),
      body: Center(
        child: Text('Home page'),
      ),
      floatingActionButton: SpeedDial(
        animatedIcon:AnimatedIcons.menu_close,

      ),
    );
  }
}


