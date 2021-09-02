import 'package:flutter/material.dart';
import 'package:appflutter/recomendador/comentarios.dart';
import 'package:appflutter/recomendador/descripcion/descripcion.dart';
import 'package:appflutter/recomendador/imagen.dart';

class EstructuraRecomendador extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Recomendador de Restaurantes")),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ImagenPrincipal(),
              DescripcionRestaurante(),
              // ComentariosRestaurante()
            ],
          ))
        ],
      ),
    );
  }
}
