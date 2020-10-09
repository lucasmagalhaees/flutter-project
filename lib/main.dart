import 'package:flutter/material.dart';

import 'br/com/projeto/flutter/rotas/Bebida.dart';
import 'br/com/projeto/flutter/rotas/Comida.dart';
import 'br/com/projeto/flutter/rotas/KudoMain.dart';
import 'br/com/projeto/flutter/rotas/ListaPedidos.dart';

/*
void main() =>   runApp(
    MaterialApp(
        home: AulaMaterialApp()
    )); // MaterialApp

*/

void main() => runApp(MaterialApp(home: MyApp())); // MaterialApp

//AulaMaterial 02
//void main() =>   runApp(AulaMaterialApp02()); // Mat

//void main() =>   runApp(MaterialShowImageApp()); // MaterialApp

class HelloWorldApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Aprendendo Flutter com Fujioka',
          textDirection: TextDirection.rtl,
        ),
        Text(
          'Turma de Mobile',
          textDirection: TextDirection.rtl,
        ),
        Expanded(
          child: FittedBox(
            fit: BoxFit.contain, // otherwise the logo will be tiny
            child: Image.network(
              'https://i.ytimg.com/vi/ztvTLBwUXlU/maxresdefault.jpg',
              alignment: Alignment.center,
            ),
          ),
        ),
      ],
    );
  }
}

class MaterialMobileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fuji Flutter Mobile Class',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Experimente mudar o Color
      ),
      home: MyMaterialPage(title: 'Aula de Flutter '),
    );
  }
}

class MyMaterialPage extends StatefulWidget {
  MyMaterialPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyMaterialPageState createState() => _MyMaterialPageState();
}

class _MyMaterialPageState extends State<MyMaterialPage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Você apertou o botão quantas vezes',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Incrementar',
            child: Icon(Icons.add),
          ),
          SizedBox(
            width: 10.0,
          ),
          FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: 'Decrementar',
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
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
