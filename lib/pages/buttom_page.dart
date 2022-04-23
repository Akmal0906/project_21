import 'package:flutter/material.dart';

class ButtomPage extends StatefulWidget {
  static final String id = 'buttom_page';

  @override
  State<ButtomPage> createState() => _ButtomPageState();
}

class _ButtomPageState extends State<ButtomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          height: 50,
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.lightBlueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                )),
            child: Text('press me'),
            onPressed: () {
              print('Clicked');
            },
          ),
        ),
      ),
    );
  }
}
