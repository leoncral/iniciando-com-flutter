import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Editor.dart';
import 'Transferencia.dart';

class FormularioTransferencia extends StatelessWidget {
  final TextEditingController _controladorCampoNumeroConta =
      TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulário de Transferência'),
      ),
      //criar a estrutura principal da aplicação, define um espaço para trabalhar
      body: Column(
        children: <Widget>[
          Editor(
            controlador: _controladorCampoNumeroConta,
            dica: '0000',
            rotulo: 'Número da conta',
          ),
          Editor(
            controlador: _controladorCampoValor,
            dica: '0,00',
            icone: Icons.monetization_on,
            rotulo: 'Valor',
          ),
          RaisedButton(
            color: Colors.blue[600],
            //Define o comportamento do botão
            onPressed: () => _criaTransferencia(context),
            child: Text('Confirmar'),
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }

   _criaTransferencia(BuildContext context) {
    print('clicou no botão confirmar');
    final int numeroConta =
        int.tryParse(_controladorCampoNumeroConta.text);
    final double valor = double.tryParse(_controladorCampoValor.text);

    if (numeroConta != null && valor != null) {
      final transferenciaCriada = Tranferencia(valor, numeroConta);
      print('Criando a transferencia');
      print('$transferenciaCriada');

      Navigator.pop(context, transferenciaCriada);

     // print('$transferenciaCriada');
    }
  }
}
