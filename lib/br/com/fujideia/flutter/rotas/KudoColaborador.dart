import 'package:flutter/material.dart';

class KudoColaborador extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var imageColaborador = Image.network('https://i2.wp.com/www.deviante.com.br/wp-content/uploads/2019/04/15.-Colabora%C3%A7%C3%A3o.png?fit=740%2C381');
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  "Você é o Cara, colabora com tudo", style: TextStyle( fontSize: 40)
              ),
              SizedBox(height: 40),
              imageColaborador,
              SizedBox(height: 20),
              RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Home"),
              )
            ],
          ),
        )
    );
  }
}