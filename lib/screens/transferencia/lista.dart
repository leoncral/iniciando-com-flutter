import 'package:bytebank/screens/transferencia/formulario.dart';
import 'package:bytebank/models/transferencia.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../item_transferencia.dart';
import 'formulario.dart';

const _appBarTitle = 'Lista de transferências';

/* StatelessWidget emtrega um elemento estático, nao pode sofre mudança de conteúdo
de forma dinâmica;
Criamos a classe ListaTransferencia para centralizar a nossa lista e deixar o código
mais fácil de ser lido */

class ListaTransferenciasState extends State<ListaTransferencia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitle),
      ),
      body: ListView.builder(
        itemCount: widget._transferencias.length,
        itemBuilder: (context, indice) {
          final transferencia = widget._transferencias[indice];
          return ItemTransferencia(transferencia);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          final Future<Tranferencia> future =
          Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FormularioTransferencia();
              },
            ),
          );
          future.then((transferenciaRecebida) =>
            _atualiza(transferenciaRecebida));
        },
      ),
    );
  }

  void _atualiza(Tranferencia transferenciaRecebida) {
    if (transferenciaRecebida != null) {
      setState(() {
        widget._transferencias.add(transferenciaRecebida);
      });
    }
  }
}

class ListaTransferencia extends StatefulWidget {
  final List<Tranferencia> _transferencias = List();

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ListaTransferenciasState();
  }
}
