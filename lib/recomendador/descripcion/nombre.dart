import 'package:flutter/material.dart';

class NombreRestaurante extends StatelessWidget {
  String nombreRestaurante;

  NombreRestaurante(this.nombreRestaurante);

  @override
  Widget build(BuildContext context) {
    final nombreWidget = Text(
      this.nombreRestaurante,
      style: TextStyle(
          fontSize: 35.0, fontWeight: FontWeight.w700, fontFamily: "ZCOOL"),
      textAlign: TextAlign.left,
    );

    return nombreWidget;
  }
}
