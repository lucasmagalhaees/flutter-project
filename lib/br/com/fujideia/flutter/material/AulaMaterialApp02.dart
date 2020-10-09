import 'package:flutter/material.dart';

class AulaMaterialApp02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Card(
            child: ListTile(
              leading: Icon(Icons.thumb_up),
              title: Text('Kudo Brave'),
              subtitle:
                  Text('Você recebeu um Kudo de Bravura estudantil do Fujioka'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.thumb_down),
              title: Text('Kudo Fail'),
              subtitle:
                  Text('Você recebeu um Kudo de Preguiça por não estudar'),
            ),
          ),
        ],
      ),

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
