import 'package:bytebank/FormularioTransferencia.dart';
import 'package:bytebank/Transferencia.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ItemTransferencia.dart';
import 'FormularioTransferencia.dart';

/* StatelessWidget emtrega um elemento estático, nao pode sofre mudança de conteúdo
de forma dinâmica;
Criamos a classe ListaTransferencia para centralizar a nossa lista e deixar o código
mais fácil de ser lido */
class ListaTransferencia extends StatelessWidget {
  final List<Tranferencia> _transferencias = List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de transferências'),
      ),
      body: ListView.builder(
        itemCount: _transferencias.length,
        itemBuilder: (context, indice) {
          final transferencia = _transferencias[indice];
          return ItemTransferencia(transferencia);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          final Future<Tranferencia> future = Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return FormularioTransferencia();
              },
            ),
          );
          future.then(
            (transferenciaRecebida) {
              print('Chegou no then do future');
              print('$transferenciaRecebida');
              _transferencias.add(transferenciaRecebida);
            },
          );
        },
      ),
    );
  }
}
