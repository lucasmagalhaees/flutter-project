import 'package:flutter/material.dart';

void main() {
  runApp(Pedidos());
}

class Pedidos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class ListaKudos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Item('4565', 'Batata-frita', true),
      Item('1245', 'Milkshake G', false),
      Item('45', 'Coca cola zero', false),
      Item('45', 'H20 fresh', false),
      Item('78', 'X-Burger', true),
      Item('43', 'Big Chicken', true),
    ]);
  }
}

class Item extends StatelessWidget {
  final String titulo;
  final String mensagem;
  final bool isFood;

  Item(this.titulo, this.mensagem, this.isFood);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(isFood ? Icons.fastfood : Icons.local_drink),
        title: Text("Pedido Nº " + this.titulo),
        subtitle: Text("Descrição: " + this.mensagem),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool visibility = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListaKudos(),
      appBar: new AppBar(
        backgroundColor: Colors.orange,
        title: Text('Lista de Pedidos'),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {
              _show();
            },
            tooltip: 'Incrementar',
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }

  void _show() {
    setState(() {
      visibility = true;
    });
  }

  void _hide() {
    setState(() {
      visibility = false;
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }
}
