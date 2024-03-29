import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import '../src/models/image_model.dart';
import 'dart:convert';
import './widgets/image_list.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);
  
  @override
  State<App> createState() => _AppState();
}


class _AppState extends State<App>{
  int counter = 0;
  List<ImageModel> images = [];

  void fetchImage() async {
    counter ++;
    var response = await get(Uri.parse('https://jsonplaceholder.typicode.com/photos/$counter'));
    var imageModel = ImageModel.fromJson(json.decode(response.body));

    setState(() {
      images.add(imageModel);
    });
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
        body: ImageList(images),
      ),
    );
  }
}
