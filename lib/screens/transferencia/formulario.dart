import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../components/editor.dart';
import '../../models/transferencia.dart';

const _tituloAppBr = 'Formulário de Transferência';

class FormularioTransferencia extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormularioTransferenciaState();
  }
}

class FormularioTransferenciaState extends State<FormularioTransferencia> {
  final TextEditingController _controladorCampoNumeroConta =
      TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBr),
      ),
      //criar a estrutura principal da aplicação, define um espaço para trabalhar
      body: SingleChildScrollView(
        child: Column(
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
              //Define o comportamento do botão
              onPressed: () => _criaTransferencia(context),
              child: Text('Confirmar'),
            ),
          ],
        ),
      ),
    );
  }

  void _criaTransferencia(BuildContext context) {
    print('clicou no botão confirmar');
    final int numeroConta = int.tryParse(_controladorCampoNumeroConta.text);
    final double valor = double.tryParse(_controladorCampoValor.text);

    if (numeroConta != null && valor != null) {
      final transferenciaCriada = Tranferencia(valor, numeroConta);


//      print('Criando a transferencia');
//      print('$transferenciaCriada');

      Navigator.pop(context, transferenciaCriada);

      // print('$transferenciaCriada');
    }
  }
}
