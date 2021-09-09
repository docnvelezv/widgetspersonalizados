import 'package:flutter/material.dart';
import 'dart:math';

class NumerosAleatorios extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NumerosAleatorios();
  }
}

class _NumerosAleatorios extends State<NumerosAleatorios> {
  String textoAMostrar = "";
  int numeroAleatorio = 0;

  mostrarSiguienteNumeroAleatorio() {
    setState(() {
      Random random = new Random();
      this.numeroAleatorio = random.nextInt(100);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(this.numeroAleatorio.toString()),
        ElevatedButton(
            onPressed: () {
              mostrarSiguienteNumeroAleatorio();
            },
            child: Text("Mostrar siguiente número aleatorio"))
      ],
    );
  }
}
