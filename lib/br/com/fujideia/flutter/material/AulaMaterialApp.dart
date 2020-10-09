import 'package:flutter/material.dart';

class AulaMaterialApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        child: Column(
          children: <Widget>[
            Text('Um texto'),
            Text('Outro Texto'),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: const Text('Kudos '),
      ), // AppBar
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),

    );
  }
}