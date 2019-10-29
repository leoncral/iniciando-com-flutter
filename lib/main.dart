import 'package:flutter/material.dart';
import 'ListaTransferencia.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        body: ListaTransferencia(),
        appBar: AppBar(
          title: Text('Transferências'),
          backgroundColor: Colors.green,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
        ),
      ),
    ));





