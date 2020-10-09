import 'package:flutter/material.dart';
import 'package:kudoapp/br/com/fujideia/flutter/rotas/KudoAmizade.dart';
import 'package:kudoapp/br/com/fujideia/flutter/rotas/KudoColaborador.dart';
import 'package:kudoapp/br/com/fujideia/flutter/rotas/Kudos.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'kudos',
        routes: {
          'kudos': (context) => Kudos(),
          'kudoColaborador': (context) => KudoColaborador(),
          'kudoAmizade': (context) => KudoAmizade()
        }
    );

  }
}