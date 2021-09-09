import 'package:flutter/material.dart';
import 'package:appflutter/ejemploboton/texto_dinamico.dart';
import 'package:appflutter/ejemploboton/numeros_aleatorios.dart';

class VistaDinamica extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _VistaDinamica();
  }
}

class _VistaDinamica extends State<VistaDinamica> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Ejemplo de Cambios de estado"),
        ),
        body: Container(
          child: Column(
            children: [TextoDinamico(), NumerosAleatorios()],
          ),
        ));
  }
}
