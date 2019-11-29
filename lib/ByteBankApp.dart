import 'package:flutter/cupertino.dart' show BuildContext, StatelessWidget, Widget;
import 'package:flutter/material.dart';

import 'FormularioTransferencia.dart';

class ByteBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: FormularioTransferencia(),
      ),
    );
  }
}