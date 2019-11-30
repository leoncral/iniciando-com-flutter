import 'package:bytebank/Transferencia.dart' as prefix0;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bytebank/Transferencia.dart';

class FormularioTransferencia extends StatelessWidget {
  final TextEditingController _controladorCampoNumeroConta =
      TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Criando Transferência'),
      ),
      //criar a estrutura principal da aplicação, define um espaço para trabalhar
      body: Column(
        children: <Widget>[
          //Padding insere um espaço no entorno texte field
          Padding(
            //define o tamanho do padding
            padding: const EdgeInsets.all(16.0),
            //campo de texto numero da conta
            child: TextField(
              //define o tipo de teclado
              controller: _controladorCampoNumeroConta,
              keyboardType: TextInputType.number,
              style: TextStyle(
                fontSize: 24.0,
              ),
              decoration: InputDecoration(
                labelText: 'Número da conta',
                hintText: '0000',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            //Valor para ser tranferido
            child: TextField(
              controller: _controladorCampoValor,
              keyboardType: TextInputType.number,
              style: TextStyle(
                fontSize: 24.0,
              ),
              decoration: InputDecoration(
                icon: Icon(Icons.monetization_on),
                labelText: 'Valor',
                hintText: '0.00',
              ),
            ),
          ),
          RaisedButton(
            color: Colors.blue[600],
            //Define o comportamento do botão
            onPressed: () {
              final int numeroConta =
                  int.tryParse(_controladorCampoNumeroConta.text);
              final double valor = double.tryParse(_controladorCampoValor.text);

              if (numeroConta != null && valor != null) {
                final transferenciaCriada = Tranferencia(valor, numeroConta);
                debugPrint('$transferenciaCriada');
//                Scaffold.of(context).showSnackBar(
//                  SnackBar(
//                    content: Text('$transferenciaCriada'),
//                  )
//                );
              }
            },
            child: Text('Confirmar'),
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
