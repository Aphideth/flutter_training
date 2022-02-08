import 'package:flutter/material.dart';

class TextFormPage extends StatefulWidget {
  static const routeName = "textform_page";

  @override
  State<TextFormPage> createState() => _TextFormPageState();
}

//déclaration du champ de texte
TextEditingController _controller = TextEditingController();

class _TextFormPageState extends State<TextFormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text form page"),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: _controller, //appel du controller
          ),
          MaterialButton(
            onPressed: () {},
            child: Text("Display value"),
          )
        ],
      ),
    );
  }
}
