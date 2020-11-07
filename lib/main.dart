import 'package:flutter/material.dart';

void main() {
  runApp(Formulario());
}

class Usuario {
  final String username;
  final String nome;
  final String sobrenome;
  final String dataNascimento;
  final String email;
  final String senha;

  Usuario(this.username, this.nome, this.sobrenome, this.dataNascimento,
      this.email, this.senha);

  @override
  String toString() {
    return 'Usuário{username: $username, nome: $nome, sobrenome: $sobrenome}';
  }
}

class Formulario extends StatelessWidget {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _nome = TextEditingController();
  final TextEditingController _sobrenome = TextEditingController();
  final TextEditingController _dataNascimento = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _senha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Formulário de Usuário'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: _username,
                decoration: InputDecoration(labelText: 'Username'),
              ),
              TextField(
                controller: _nome,
                decoration: InputDecoration(labelText: 'Nome'),
              ),
              TextField(
                controller: _sobrenome,
                decoration: InputDecoration(labelText: 'Sobrenome'),
              ),
              TextField(
                controller: _dataNascimento,
                decoration: InputDecoration(labelText: 'Data de Nascimento'),
              ),
              TextField(
                controller: _email,
                decoration: InputDecoration(labelText: 'Email'),
              ),
              TextField(
                controller: _senha,
                decoration: InputDecoration(labelText: 'Senha'),
              ),
              RaisedButton(
                child: Text('Cadastrar'),
                onPressed: () {
                  final String username = _username.text;
                  final String nome = _nome.text;
                  final String sobrenome = _sobrenome.text;
                  final String dataNascimento = _dataNascimento.text;
                  final String email = _email.text;
                  final String senha = _senha.text;

                  final Usuario user = Usuario(
                      username, nome, sobrenome, dataNascimento, email, senha);
                  print(user);
                },
              )
            ],
          ),
        ),
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
    return Formulario();
  }
}
