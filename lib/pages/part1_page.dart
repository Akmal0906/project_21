import 'package:flutter/material.dart';

class Part1Page extends StatefulWidget {
  static final String id = 'part1_page';

  @override
  State<Part1Page> createState() => _Part1PageState();
}

class _Part1PageState extends State<Part1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Flutter course'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Phone',
                  hintStyle: TextStyle(color: Colors.lightBlueAccent),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.phone_android),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Phone',
                  hintStyle: TextStyle(color: Colors.lightBlueAccent),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.phone_android),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Phone',
                  hintStyle: TextStyle(color: Colors.lightBlueAccent),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.phone_android),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Phone',
                  hintStyle: TextStyle(color: Colors.lightBlueAccent),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.phone_android),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
