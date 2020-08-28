import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List _frases = [
    'O importante não é vencer todos os dias, mas lutar sempre.',
    'É melhor conquistar a si mesmo do que vencer mil batalhas.',
    'O medo de perder tira a vontade de ganhar.',
    'Perder para a razão, sempre é ganhar.'
  ];

  var _fraseGerada = "Clique abaxixo para gerar uma frase!";

  void _gerarFrase() {
    var numeroSorteado = new Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases Filosóficas"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          // decoration: BoxDecoration(
          //   border: Border.all(width: 3, color: Colors.amber),
          // ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 17,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
              RaisedButton(
                child: Text(
                  "Nova Frase",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                color: Colors.green,
                onPressed: _gerarFrase,
              )
            ],
          ),
        ),
      ),
    );
  }
}
