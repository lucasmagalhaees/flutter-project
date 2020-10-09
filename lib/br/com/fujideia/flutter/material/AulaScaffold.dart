import 'package:flutter/material.dart';

class AulaScaffold extends StatelessWidget {
  const AulaScaffold();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Aula AulaScaffold '),
        ), // AppBar
      ), // Scaffold
    ); // MaterialApp
  }
}