import 'package:flutter/material.dart';

class DescripcionRestaurante extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final contenedor = Container(
        margin: EdgeInsets.only(top: 400.0, right: 20.0, left: 20.0),
        child: Column(
          children: [
            Row(
              children: [
                NombreRestaurante("Mi casita"),
                CalificacionRestaurante()
              ],
            ),
            DetalleDescripcionRestaurante(
                "Lugar con el delicioso sabor colombiano para sentirte como en casa")
          ],
        ));

    return contenedor;
  }
}

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

class CalificacionRestaurante extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final calificacionWidget = Container(
        margin: EdgeInsets.only(
          left: 10.0,
        ),
        child: Row(
          children: [
            Icon(Icons.star, color: Color(0xFFf0c410)),
            Icon(Icons.star, color: Color(0xFFf0c410)),
            Icon(Icons.star, color: Color(0xFFf0c410)),
            Icon(Icons.star, color: Color(0xFFf0c410)),
            Icon(Icons.star, color: Color(0xFFf0c410))
          ],
        ));
    return calificacionWidget;
  }
}

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
