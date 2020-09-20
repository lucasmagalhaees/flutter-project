import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meu_primeiro_app/widgets/numero_aleatorio.dart';
import 'package:meu_primeiro_app/widgets/titulo.dart';

class PaginaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Gerador aleatório")),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 30),
              Titulo(),
              SizedBox(height: 30),
              NumeroAleatorio()
            ],
          ),
        ));
  }
}
