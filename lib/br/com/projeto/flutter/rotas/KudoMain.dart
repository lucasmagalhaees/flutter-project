import 'package:flutter/material.dart';
import 'package:kudoapp/br/com/projeto/flutter/rotas/Bebida.dart';
import 'package:kudoapp/br/com/projeto/flutter/rotas/Comida.dart';
import 'package:kudoapp/br/com/projeto/flutter/rotas/ListaPedidos.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'lista',
        routes: {
          'lista': (context) => ListaPedidos(),
          'comida': (context) => Comida(),
          'bebida': (context) => Bebida()
        });
  }
}
