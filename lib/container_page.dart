import 'package:flutter/material.dart';

class ContainerPage extends StatefulWidget {
  static const routeName = "container_page";
  @override
  State<ContainerPage> createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Page"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.pink,
        ),
        child: Text("Random text"),
      ),
    );
  }
}
