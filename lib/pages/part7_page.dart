import 'package:flutter/material.dart';

class Part7Page extends StatefulWidget {
  static final String id = 'part7_page';

  @override
  State<Part7Page> createState() => _Part7PageState();
}

class _Part7PageState extends State<Part7Page> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: _selectedIndex,
            onDestinationSelected: (_selectedIndex) => setState(() {
              this._selectedIndex = _selectedIndex;
            }),
            destinations: [
              NavigationRailDestination(
                  icon: Icon(Icons.favorite_border),
                  selectedIcon: Icon(Icons.favorite),
                  label: Text('favorite')),
              NavigationRailDestination(
                icon: Icon(Icons.star_border),
                  selectedIcon: Icon(Icons.star), label: Text('star')),
            ],
            labelType: NavigationRailLabelType.selected,
          ),
          VerticalDivider(
            thickness: 1,
            width: 1,
          ),
          Expanded(
              child: Center(
            child: Text('Akmal ${_selectedIndex.toString()}'),
          ),
          ),
        ],
      ),
    );
  }
}
