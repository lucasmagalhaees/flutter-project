import 'package:flutter/material.dart';

class RandonImageWidget extends StatefulWidget {
  @override
  MyRandonImageState createState() {
    return MyRandonImageState();
  }
}

class MyRandonImageState extends State<RandonImageWidget> {
  int counter = 0;
  List<String> imagens = ['https://pbs.twimg.com/profile_images/917189633519349761/ouW1DiKK_400x400.jpg'
    ,'https://avatars0.githubusercontent.com/u/48873915?s=400&u=e4783dfad25c740f235cbdf013c37a6443430738&v=4'
    ,'http://br.web.img3.acsta.net/r_1920_1080/pictures/15/06/15/15/34/437410.jpg'
    ,'https://4.bp.blogspot.com/-z1hmJgUJz4s/XC3SoXYq-3I/AAAAAAAADp0/ZZDKkIfjdQwYsY7sOWQV8huAdRuGWWSAACLcBGAs/s1600/Bob%2BMarley%2Bpintura.jpg'
    ,'https://ipeclube.com.br/files/imagens/artigos/jiujitsu560.jpg'];
  String urlImagem = "https://i.pinimg.com/564x/43/09/50/4309506f66fea969ae0791e134aab9e1.jpg";

  void onPressOfButton() {
    setState(() {
      urlImagem = imagens[counter];
      counter = counter < 4 ? counter + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: const Text('Passando imagens com o Fuji'),
      ), // AppBar
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(urlImagem),
              Padding(padding: EdgeInsets.all(10.0)),
              RaisedButton(
                child: Text(
                  "clique aqui",
                  style: TextStyle(color: Colors.white),
                ), // Text
                color: Colors.red,
                onPressed: onPressOfButton,
              ), // RaisedButton
            ], // <Widget>[]
          ), // Column
        ), // Cente
      ), // Container
    );
  }
}