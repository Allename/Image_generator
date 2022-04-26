import 'package:flutter/material.dart';
// import 'package:http/http.dart' show get;

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);
  @override
  State<App> createState() => AppState();
}


class AppState extends State<App>{
  int counter = 0;

  void fetchImage() {

  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          // Referencing the fetchImage() method
          onPressed: fetchImage,
        ),
        appBar: AppBar(
          title: const Text('Lets see some images!'),
        ),
        body: Text('$counter'),
      ),
    );
  }
}
