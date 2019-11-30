import 'package:bytebank/Transferencia.dart' show Tranferencia;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemTransferencia extends StatelessWidget {

  final Tranferencia _tranferencia;

  const ItemTransferencia(this._tranferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text('Saldo: ' + _tranferencia.valor.toString()),
        subtitle: Text('Conta: ' + _tranferencia.numeroConta.toString()),
      ),
    );
  }
}