import 'package:flutter/material.dart';

class Kudos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Escolha qual o Kudo que você quer enviar?",
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          ), // Texto a ser exibido para o usuário
          SizedBox(height: 25),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            RaisedButton(
              color: Colors.purpleAccent,
              onPressed: () {
                Navigator.pushNamed(context, 'kudoColaborador');
              },
              child: Text("Colaboração", style: TextStyle(color: Colors.white)),
            ),
            SizedBox(width: 25),
            RaisedButton(
              color: Colors.tealAccent,
              onPressed: () {
                Navigator.pushNamed(context, 'kudoAmizade');
              },
              child: Text("Amizade", style: TextStyle(color: Colors.white)),
            )
          ])
        ],
      ),
    );
  }
}
