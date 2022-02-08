import 'package:flutter/material.dart';

class ExpandedPage extends StatelessWidget {
  static const routeName = "expanded_page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded Page"),
      ),
      body: Column(children: [
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.red,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.blue,
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.green,
          ),
        ),
      ]),
    );
  }
}
