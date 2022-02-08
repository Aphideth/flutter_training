import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  static const routeName = "listview_page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Page"),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.amber,
            child: ListTile(
              leading: Icon(Icons.date_range),
              title: Text("My title"),
              subtitle: Text("subtitle"),
              trailing: Icon(Icons.developer_mode),
            ),
          ),
          Container(
            color: Colors.red,
            child: ListTile(
              leading: Icon(Icons.date_range),
              title: Text("My title"),
              subtitle: Text("subtitle"),
              trailing: Icon(Icons.developer_mode),
            ),
          )
        ],
      ),
    );
  }
}
