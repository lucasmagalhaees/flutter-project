import 'package:flutter/material.dart';

class KudoAmizade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var imageAmizade = Image.network('https://i.pinimg.com/originals/d3/1f/f3/d31ff37c349c6a1e159cf877a2c79c9f.jpg');
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  "Parceirão top show de bola", style: TextStyle( fontSize: 20)
              ),
              SizedBox(height: 40),
              imageAmizade,
              SizedBox(height: 20),
              RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Home"),
              )
            ],
          ),
        )
    );
  }
}