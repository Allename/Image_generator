import 'package:flutter/material.dart';

void main() {
  var app =  MaterialApp(
    home: Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          print('Hi there!');
        },
      ),
      appBar: AppBar(
        title: const Text('Lets see some images!'),
      ),
    ),
  );

  runApp(app);
}
