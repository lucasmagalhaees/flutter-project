import 'package:flutter/material.dart';

class Bebida extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var imageAmizade = Image.network(
        'https://images.unsplash.com/photo-1561758033-48d52648ae8b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80.jpg',
        width: 300,
        height: 400,
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
              Text("Coca Cola KS 300 ml", style: TextStyle(fontSize: 20)),
              SizedBox(height: 40),
              imageAmizade,
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
