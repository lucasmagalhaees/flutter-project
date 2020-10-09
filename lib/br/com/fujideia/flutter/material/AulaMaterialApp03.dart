import 'package:flutter/material.dart';

class AulaMaterialApp03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listaKudos(),

      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: const Text('Kudos '),
      ), // AppBar
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    );
  }
}

class listaKudos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
       ItemKudo('Um kudo Estudante','Você estava prestando atenção, parabéns',Icons.thumb_up),
       ItemKudo('Um Kudo Lol','Você estava jogando lol na hora da aula, não é legal',Icons.thumb_down),
      ],
    );
  }
}

class ItemKudo extends StatelessWidget{

  final String titulo;
  final String mensagem;
  final IconData icon;

  ItemKudo(this.titulo,this.mensagem,this.icon);

  @override
  Widget build(BuildContext context) {
   return  Card(
     child: ListTile(
       leading: Icon(this.icon),
       title: Text(titulo),
       subtitle: Text(mensagem),
     ),
   );
  }

}


