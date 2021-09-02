import 'package:flutter/material.dart';

class CalificacionRestaurante extends StatelessWidget {
  int puntuacion;
  List<Widget> estrellas = [];

  CalificacionRestaurante(this.puntuacion) {
    for (int i = 0; i < this.puntuacion; i++) {
      estrellas.add(Icon(Icons.star, color: Color(0xFFf0c410)));
    }

    for (int i = 0; i < (5 - this.puntuacion); i++) {
      estrellas.add(Icon(Icons.star_border, color: Color(0xFFf0c410)));
    }
  }

  @override
  Widget build(BuildContext context) {
    final calificacionWidget = Container(
        margin: EdgeInsets.only(
          left: 10.0,
        ),
        child: Row(
          children: this.estrellas,
        ));
    return calificacionWidget;
  }
}
