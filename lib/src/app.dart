import 'package:flutter/material.dart';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}


class AppState extends State<App>{
  int counter = 0;

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              counter ++;
            });
          },
        ),
        appBar: AppBar(
          title: const Text('Lets see some images!'),
        ),
      ),
    );
  }
}
