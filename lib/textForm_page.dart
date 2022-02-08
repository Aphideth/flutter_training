import 'package:flutter/material.dart';

class TextFormPage extends StatefulWidget {
  static const routeName = "textform_page";

  @override
  State<TextFormPage> createState() => _TextFormPageState();
}

//déclaration du champ de texte
TextEditingController _controller = TextEditingController();
String userInput = "Nothing";

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
            onPressed: () {
              setState(() {
                userInput = _controller.text;
              });
            },
            child: Text(
              "Display value",
              style: TextStyle(
                color: Colors.red,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
        // TODO display input
      ),
    );
  }
}
