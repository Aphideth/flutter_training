import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  static const routeName = "second_page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(child: Text("Center Widget")),
    );
  }
}
