// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, annotate_overrides

import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';
import 'package:projeto_perguntas/resultado.dart';

main() {
  runApp(new PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final _perguntas = const [
      {
        "texto": 'Qual é a sua cor favorita?',
        "respostas": [
          { 'texto': 'Preto', 'pontuacao': 10 },
          { 'texto': 'Vermelho', 'pontuacao': 7 },
          { 'texto': 'Verde', 'pontuacao': 5 },
          { 'texto': 'Branco','pontuacao': 2 },
        ]
      },
      {
        "texto": 'Qual é o seu animal favorito?',
        "respostas": [
          { 'texto': 'Cachorro', 'pontuacao': 10 },
          { 'texto': 'Gato', 'pontuacao': 7 },
          { 'texto': 'Cavalo', 'pontuacao': 5 },
          { 'texto': 'Coelho', 'pontuacao': 2 },
        ]
      },
      {
        "texto": 'Qual é a sua linguagem de programação favorita?',
        "respostas": [
          { 'texto': 'C#', 'pontuacao': 10 },
          { 'texto': 'Java', 'pontuacao': 7 },
          { 'texto': 'PHP', 'pontuacao': 5 },
          { 'texto': 'Python', 'pontuacao': 2 },
        ]
      },

    ];

  void _responder(int pontuacao) {
    if(temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;  
        _pontuacaoTotal += pontuacao;
      });
    }
    
    print(_perguntaSelecionada);
    print(_pontuacaoTotal);
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
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
        body: temPerguntaSelecionada ? Questionario(_perguntas, _perguntaSelecionada, _responder): Resultado(_pontuacaoTotal, _reiniciarQuestionario)
      )
    );
  }
  
}

class PerguntaApp extends StatefulWidget {

  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }

}
