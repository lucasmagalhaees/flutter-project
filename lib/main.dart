import 'package:flutter/material.dart';

void main() {
  runApp(Formulario());
}

class Projeto {
  final String codigo;
  final String nome;
  final String descricao;
  final String gerente;
  final String dataSP1;
  final String dataSP2;
  final String dataInicio;
  final String dataFim;
  final String dataReview;
  final String dataRetrospectiva;

  Projeto(
      this.codigo,
      this.nome,
      this.descricao,
      this.gerente,
      this.dataSP1,
      this.dataSP2,
      this.dataInicio,
      this.dataFim,
      this.dataReview,
      this.dataRetrospectiva);

  @override
  String toString() {
    return 'Projeto{código: $codigo, nome: $nome, descricao: $descricao}';
  }
}

class Formulario extends StatelessWidget {
  final TextEditingController _codigo = TextEditingController();
  final TextEditingController _nome = TextEditingController();
  final TextEditingController _descricao = TextEditingController();
  final TextEditingController _gerente = TextEditingController();
  final TextEditingController _dataSP1 = TextEditingController();
  final TextEditingController _dataSP2 = TextEditingController();
  final TextEditingController _dataInicio = TextEditingController();
  final TextEditingController _dataFim = TextEditingController();
  final TextEditingController _dataReview = TextEditingController();
  final TextEditingController _dataRetrospectiva = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Formulário de Produtos'),
        ),
        body: Column(
          children: <Widget>[
            TextField(
              controller: _codigo,
              decoration: InputDecoration(labelText: 'Código'),
            ),
            TextField(
              controller: _nome,
              decoration: InputDecoration(labelText: 'Nome'),
            ),
            TextField(
              controller: _descricao,
              decoration: InputDecoration(labelText: 'Descrição'),
            ),
            TextField(
              controller: _gerente,
              decoration: InputDecoration(labelText: 'Data de Nascimento'),
            ),
            TextField(
              controller: _dataSP1,
              decoration: InputDecoration(labelText: 'Data SP1'),
            ),
            TextField(
              controller: _dataSP2,
              decoration: InputDecoration(labelText: 'Data SP2'),
            ),
            TextField(
              controller: _dataInicio,
              decoration: InputDecoration(labelText: 'Data Início'),
            ),
            TextField(
              controller: _dataFim,
              decoration: InputDecoration(labelText: 'Data Fim'),
            ),
            TextField(
              controller: _dataReview,
              decoration: InputDecoration(labelText: 'Data Review'),
            ),
            TextField(
              controller: _dataRetrospectiva,
              decoration: InputDecoration(labelText: 'Data Retrospectiva'),
            ),
            RaisedButton(
              child: Text('Cadastrar'),
              onPressed: () {
                final String codigo = _codigo.text;
                final String nome = _nome.text;
                final String descricao = _descricao.text;
                final String gerente = _gerente.text;
                final String dataSP1 = _dataSP1.text;
                final String dataSP2 = _dataSP2.text;
                final String dataInicio = _dataInicio.text;
                final String dataFim = _dataFim.text;
                final String dataReview = _dataReview.text;
                final String dataRetrospectiva = _dataRetrospectiva.text;

                final Projeto proj = Projeto(
                    codigo,
                    nome,
                    descricao,
                    gerente,
                    dataSP1,
                    dataSP2,
                    dataInicio,
                    dataFim,
                    dataReview,
                    dataRetrospectiva);
                print(proj);
              },
            )
          ],
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
