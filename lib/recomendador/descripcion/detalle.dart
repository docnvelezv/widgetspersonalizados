import 'package:flutter/material.dart';

class DetalleDescripcionRestaurante extends StatelessWidget {
  String descripcionRestaurante;

  DetalleDescripcionRestaurante(this.descripcionRestaurante);

  @override
  Widget build(BuildContext context) {
    final nombreWidget = Text(
      this.descripcionRestaurante,
      style: TextStyle(
          fontSize: 19.0, color: Color(0xFF525252), fontFamily: "ZCOOL"),
      textAlign: TextAlign.left,
    );

    return nombreWidget;
  }
}
