import 'package:flutter/material.dart';
import 'package:meu_primeiro_app/pages/pagina_inicial.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: PaginaInicial(),
      ),
    );
  }
}
