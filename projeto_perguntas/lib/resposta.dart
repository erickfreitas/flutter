import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() onPressedFunction;

  Resposta(this.texto, this.onPressedFunction);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(33, 150, 243, 1),
                  foregroundColor: Color.fromARGB(255, 255, 255, 255)
                ),
        child: Text(texto),
        onPressed: onPressedFunction,
      )
    );
  } 
}
