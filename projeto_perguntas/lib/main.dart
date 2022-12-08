// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, annotate_overrides

import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';
import 'package:projeto_perguntas/resultado.dart';

main() {
  runApp(new PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  final _perguntas = const [
      {
        "texto": 'Qual é a sua cor favorita?',
        "respostas": [
          { 'texto': 'Preto', 'nota': 10 },
          { 'texto': 'Vermelho', 'nota': 7 },
          { 'texto': 'Verde', 'nota': 5 },
          { 'texto': 'Branco','nota': 3 },
        ]
      },
      {
        "texto": 'Qual é o seu animal favorito?',
        "respostas": [
          { 'texto': 'Cachorro', 'nota': 10 },
          { 'texto': 'Gato', 'nota': 7 },
          { 'texto': 'Cavalo', 'nota': 5 },
          { 'texto': 'Coelho', 'nota': 3 },
        ]
      },
      {
        "texto": 'Qual é a sua linguagem de programação favorita?',
        "respostas": [
          { 'texto': 'C#', 'nota': 10 },
          { 'texto': 'Java', 'nota': 7 },
          { 'texto': 'PHP', 'nota': 5 },
          { 'texto': 'Python', 'nota': 3 },
        ]
      },

    ];

  void _responder() {
    if(temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;  
      });
    }
    
    print(_perguntaSelecionada);
  }

  bool get temPerguntaSelecionada  {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada ? Questionario(_perguntas, _perguntaSelecionada, _responder): Resultado()
      )
    );
  }
  
}

class PerguntaApp extends StatefulWidget {

  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }

}
