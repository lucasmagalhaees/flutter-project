import 'package:flutter/material.dart';

void main() {
  runApp(kudos());
}

class kudos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class listaKudos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Card(
          child: ListTile(
        leading: Icon(Icons.thumb_up),
        title: Text('Bom trabalho'),
        subtitle: Text('Você recebeu um agradecimento'),
      )),
      Card(
          child: ListTile(
        leading: Icon(Icons.thumb_down),
        title: Text('Rendimento abaixo do esperado'),
        subtitle: Text('Você recebeu uma reclamação'),
      )),
    ]);
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
      body: listaKudos(),
      appBar: new AppBar(
        backgroundColor: Colors.purple,
        title: Text('Kudos'),
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
