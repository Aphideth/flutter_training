import 'package:flutter/material.dart';

class ListViewBuilderPage extends StatefulWidget {
  static const routeName = "listviewbuilder_page";

  @override
  State<ListViewBuilderPage> createState() => _ListViewBuilderPageState();
}

class _ListViewBuilderPageState extends State<ListViewBuilderPage> {
  int number = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Builder Page"),
      ),
      body: SingleChildScrollView(
        //scroll possible au-delà de l'écran
        child: Column(
          children: [
            OutlinedButton(
              //au clic on ajoute 1
              onPressed: () {
                setState(() {
                  // changement d'état
                  number = number + 1;
                });
              },
              child: Text("Add a ListTile"),
            ),
            ListView.builder(
              physics: ScrollPhysics(
                  parent: null), //scroll possible sur le milieu de page
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  color: Colors.green,
                  child: ListTile(
                    leading: Icon(Icons.date_range),
                    title: Text("My title"),
                    subtitle: Text("subtitle"),
                    trailing: Icon(Icons.developer_mode),
                  ),
                );
              },
              itemCount: number, // nombre de list = variable number
            ),
          ],
        ),
      ),
    );
  }
}
