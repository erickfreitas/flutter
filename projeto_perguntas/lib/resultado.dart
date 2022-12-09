// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {

  final int pontuacao;
  final void Function() reiniciarQuestionario;

  Resultado(this.pontuacao, this.reiniciarQuestionario);

  String get conteudoResultado {
    if(pontuacao < 8) {
      return 'Parabéns!';
    }
    else if (pontuacao < 12) {
      return 'Você é bom!';
    }
    else if (pontuacao < 16) {
      return 'Impressionante!';
    }
    else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          Center(
            child: Text(
              conteudoResultado,
              style: TextStyle(fontSize: 28),
              ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      foregroundColor: Color.fromRGBO(33, 150, 243, 1),
                      elevation: 0, 
                      shadowColor: Colors.transparent                     
                    ),
            child: Text('Reiniciar Questionário'),
            onPressed: reiniciarQuestionario,
          )
        ],
      );
  }
}