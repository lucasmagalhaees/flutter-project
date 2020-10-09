import 'package:flutter/material.dart';

class Comida extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var imageColaborador = Image.network(
        'https://images.unsplash.com/photo-1572802419224-296b0aeee0d9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1303&q=80.jpg',
        width: 300,
        height: 300,
        fit: BoxFit.fill);
    return Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.orange,
          title: Text('Meu Pedido'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("X-Burger", style: TextStyle(fontSize: 20)),
              SizedBox(height: 40),
              imageColaborador,
              SizedBox(height: 20),
              RaisedButton(
                color: Colors.deepOrange,
                onPressed: () {
                  Navigator.pushNamed(context, 'lista');
                },
                child: Text("Voltar para Pedidos",
                    style: TextStyle(color: Colors.white)),
              )
            ],
          ),
        ));
  }
}
