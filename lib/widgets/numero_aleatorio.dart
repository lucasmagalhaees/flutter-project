import 'dart:math';

import 'package:flutter/material.dart';

class NumeroAleatorio extends StatefulWidget {
  @override
  NumeroAleatorioState createState() => NumeroAleatorioState();
}

class NumeroAleatorioState extends State<NumeroAleatorio> {
  int numero = 0;
  void gerarNumero() {
    setState(() {
      Random numeroAleatorio = new Random();
      numero = numeroAleatorio.nextInt(1000);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            '$numero',
            style: TextStyle(color: Colors.black, fontSize: 28),
          ),
          SizedBox(height: 30),
          RaisedButton(
            onPressed: gerarNumero,
            child: Text('Gerar número'),
          )
        ],
      ),
    );
  }
}
