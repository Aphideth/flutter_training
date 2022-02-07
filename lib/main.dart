import 'package:flutter/material.dart';
import 'second_page.dart';
import 'container_page.dart';
import 'image_page.dart';

void main() {
  runApp(MyApp());
}

//First StatefullWidget with the MaterialApp
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //disable Debug banner
      home: MyScaffoldWidget(), //appel du 2eme StatefullWidget
      routes: {
        SecondPage.routeName: (_) => SecondPage(),
        ContainerPage.routeName: (_) => ContainerPage(),
        ImagePage.routeName: (_) => ImagePage(),
      },
    );
  }
}

//Second StatefullWidget
class MyScaffoldWidget extends StatefulWidget {
  MyScaffoldWidget({Key? key}) : super(key: key);

  @override
  State<MyScaffoldWidget> createState() => _MyScaffoldWidgetState();
}

class _MyScaffoldWidgetState extends State<MyScaffoldWidget> {
//Variables & function
  bool myNewButton = false;
  String myText = "Hello";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("My first Flutter project"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("My first text in column"),
          Text("My second text in column"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RaisedButton(
                onPressed: () {
                  setState(() {
                    //set State
                    myNewButton = !myNewButton;
                  });
                },
                child: Text("RaisedButton"),
              ),
              Text(myNewButton ? "Hi" : myText), //ternaire
              Text(myNewButton ? myText : "Hòla"),
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Row(
          children: [
            Spacer(),
            IconButton(
              icon: Icon(Icons.home, color: Colors.white),
              onPressed: () {
                print("Button pressed");
              },
            ),
            Spacer(),
            IconButton(
              icon:
                  Icon(Icons.confirmation_number_outlined, color: Colors.white),
              onPressed: () {
                Navigator.of(context).pushNamed(SecondPage.routeName);
              },
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.next_plan_sharp, color: Colors.white),
              onPressed: () {
                Navigator.of(context).pushNamed(ImagePage.routeName);
              },
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () {
                Navigator.of(context).pushNamed(ContainerPage.routeName);
              },
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
// onPressed:() {
// Navigator.of(context).pushNamed(SecondPage.routeName);
// },