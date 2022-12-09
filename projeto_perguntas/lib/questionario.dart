import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) responder;

  Questionario(this.perguntas, this.perguntaSelecionada, this.responder);

  bool get temPerguntaSelecionada  {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {

    String perguntaTexto = perguntas[perguntaSelecionada]['texto'].toString();
    List<Map<String, Object>> respostas = temPerguntaSelecionada ? perguntas[perguntaSelecionada]['respostas'] as List<Map<String, Object>> : [];
    List<Widget> widgets = respostas.map((t) { 
      return Resposta(
          t['texto'] as String, 
          () => responder(t['pontuacao'] as int),
        );
      }).toList();

    return Column(
          children: <Widget>[
            Questao(perguntaTexto),
            ...widgets
          ],
        );
  }

}