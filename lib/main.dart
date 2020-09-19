import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

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
      appBar: new AppBar(backgroundColor: new Color(0xFF26C6DA)),
      body: new Container(
        margin: new EdgeInsets.only(left: 16.0, right: 16.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (visibility)
                Expanded(
                  child: FittedBox(
                    fit: BoxFit.contain, // otherwise the logo will be tiny
                    child: const FlutterLogo(),
                  ),
                )
            ]),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {
              _show();
            },
            tooltip: 'Incrementar',
            child: Icon(Icons.remove_red_eye),
          ),
          SizedBox(
            width: 10.0,
          ),
          FloatingActionButton(
            onPressed: () {
              _hide();
            },
            tooltip: 'Decrementar',
            child: Icon(Icons.close),
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
