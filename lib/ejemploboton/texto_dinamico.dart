import 'package:flutter/material.dart';

class TextoDinamico extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextoDinamico();
  }
}

class _TextoDinamico extends State<TextoDinamico> {
  String textoAMostrar = "";
  List<String> fraseAMostrar = ["Hola", "a", "Todos"];
  int indice = 0;

  _TextoDinamico() {
    this.textoAMostrar = fraseAMostrar[indice];
  }

  mostrarSiguientePalabra() {
    setState(() {
      if (indice < 2) {
        indice++;
      } else {
        indice = 0;
      }

      textoAMostrar = fraseAMostrar[indice];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(this.textoAMostrar),
        ElevatedButton(
            onPressed: () {
              mostrarSiguientePalabra();
            },
            child: Text("Mostrar siguiente palabra"))
      ],
    );
  }
}
