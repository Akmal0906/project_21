import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  static final String id = 'second_page';

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          child: Text('Press me'),
          onTap: () {
            print('Clicked button');
          },
        ),
      ),
    );
  }
}
