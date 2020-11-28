import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'br/com/projeto/flutter/User.dart';

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




class Item extends StatelessWidget {
  final User usuario;
  final bool changeItem;

  Item(this.usuario, this.changeItem);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.streetview),
        title: Text(this.usuario.id.toString() + " - " + this.usuario.name.toString() ),
        subtitle: Text(changeItem ? "Telefone: " + this.usuario.phone.toString() : "Email: " + this.usuario.email.toString()),
      ),
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {

  List<User> _usuarios;
  int _size;
  bool isPhone = false;

  Future<List<User>> _getCategorias() async{

    try{
      List<User> listUsuarios = List();
      final response = await http.get('https://jsonplaceholder.typicode.com/users');
      if(response.statusCode == 200){
        var decodeJson = jsonDecode(response.body);
        decodeJson.forEach((item) => 
         listUsuarios.add(User.fromJson(item)));
      return listUsuarios;
      } else {
        print('Erro ao carregar lista');
        return null;
      }

    } catch(e){

        print('Erro ao carregar lista');
        return null;
    }
  }
  

  @override
  void initState(){
    super.initState();
    _getCategorias().then((map){
    _usuarios = map;
      _usuarios.removeWhere((element) => element.id > 5);
      _size = _usuarios.length;
      print(_usuarios.length);
    });
  }
  

     @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: _size,
          itemBuilder: (BuildContext context, int index){
            return Item(_usuarios[index], isPhone);
          }),
      ),
        appBar: new AppBar(
        backgroundColor: Colors.green,
        title: Text('Listagem de Usuários - Top 5'),
      ),

        floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: () {
              _exibeTelefone();
            },
            tooltip: 'Incrementar',
            child: Icon(Icons.phone),
          ),
          SizedBox(
            width: 10.0,
          ),
          FloatingActionButton(
            backgroundColor: Colors.orange,
            onPressed: () {
              _exibeEmail();
            },
            tooltip: 'Decrementar',
            child: Icon(Icons.email),
          ),
        ],
    ),
     
    );
  }
   void _exibeTelefone() {
    setState(() {
      isPhone = true;
    });
  }

  void _exibeEmail() {
    setState(() {
      isPhone = false;
    });
  }

  



}
