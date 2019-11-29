import 'package:bytebank/Tranferencia.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ItemTransferencia.dart';

/* StatelessWidget emtrega um elemento estático, nao pode sofre mudança de conteúdo
de forma dinâmica;
Criamos a classe ListaTransferencia para centralizar a nossa lista e deixar o código
mais fácil de ser lido */
class ListaTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transferências'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        //alt + enter para colocar os card dentro do column
        children: <Widget>[
          ItemTransferencia(Tranferencia(100, 1000)),
          ItemTransferencia(Tranferencia(200, 2000)),
          ItemTransferencia(Tranferencia(300, 3000)),
          ItemTransferencia(Tranferencia(400, 4000)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    );
  }
}