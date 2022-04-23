import 'package:flutter/material.dart';

class Part6Page extends StatefulWidget {
  static final String id = 'part6_page';

  @override
  State<Part6Page> createState() => _Part6PageState();
}

class _Part6PageState extends State<Part6Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            floating: true,
            pinned: true,
            snap: true,
            elevation: 50,
            backgroundColor: Colors.lightBlueAccent,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text('Akmal best man'),
              background: Image(
                image: AssetImage('assets/images/ic_image6.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(_buildList(50)),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildList(int count) {
    List<Widget> item = [];
    for (int i = 0; i < count; i++) {
      item.add(_itemList(i));
    }
    return item;
  }

  Widget _itemList(int i) {
    return Container(
      height: 50,
      child: Center(
        child: Text('item ${i.toString()}'),
      ),
    );
  }
}
