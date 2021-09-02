import 'package:flutter/material.dart';
import 'package:appflutter/recomendador/descripcion/puntuacion.dart';
import 'package:appflutter/recomendador/descripcion/nombre.dart';
import 'package:appflutter/recomendador/descripcion/detalle.dart';

class DescripcionRestaurante extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final contenedor = Container(
        margin: EdgeInsets.only(right: 20.0, left: 20.0),
        child: Column(
          children: [
            Row(
              children: [
                NombreRestaurante("Mi casita"),
                CalificacionRestaurante(2)
              ],
            ),
            DetalleDescripcionRestaurante(
                "Lugar con el delicioso sabor colombiano para sentirte como en casa")
          ],
        ));

    return contenedor;
  }
}
