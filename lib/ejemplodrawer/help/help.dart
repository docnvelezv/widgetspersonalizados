import 'package:flutter/material.dart';

class EstructuraHelp extends StatefulWidget {
  static String ruta = "/help";

  @override
  State<StatefulWidget> createState() {
    return _EstructuraHelp();
  }
}

class _EstructuraHelp extends State<EstructuraHelp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Help"),
        ),
        body: Container(
          child: Text("Acá puedes ver información de la aplicación"),
        ));
  }
}
