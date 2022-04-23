import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

class Part5Page extends StatefulWidget {
  static final String id = 'part5_page';

  @override
  State<Part5Page> createState() => _Part5PageState();
}

class _Part5PageState extends State<Part5Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          TabData(iconData: Icons.home, title: 'Home'),
          TabData(iconData: Icons.accessibility, title: 'Person'),
          TabData(iconData: Icons.message, title: 'Message'),
        ],
        onTabChangedListener: (int position) {},
      ),
    );
  }
}
