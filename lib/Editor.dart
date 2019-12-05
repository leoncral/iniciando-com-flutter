import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  final TextEditingController controlador;
  final String rotulo;
  final String dica;
  final IconData icone;

  Editor({this.controlador, this.rotulo, this.dica, this.icone});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //Padding insere um espaço no entorno texte field
    return Padding(
      //define o tamanho do padding
      padding: const EdgeInsets.all(16.0),
      //campo de texto numero da conta
      child: TextField(
        //define o tipo de teclado
        controller: controlador,
        keyboardType: TextInputType.number,
        style: TextStyle(
          fontSize: 24.0,
        ),
        decoration: InputDecoration(
          //faz uma verificação se o icone é diferente de nulo, se for verdade
          //será enviado o ícone solicitado. Caso seja falso, será enviado uma
          //referência nula e o ícone não será mostrado.
          icon: icone != null ? Icon(icone) : null,
          labelText: rotulo,
          hintText: dica,
        ),
      ),
    );
  }
}
