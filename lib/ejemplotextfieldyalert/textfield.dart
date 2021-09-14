import 'package:flutter/material.dart';

class InputText extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InputText();
  }
}

class _InputText extends State<InputText> {
  List<Widget> valoresIngresados = [];

  TextEditingController controladorInput = TextEditingController();

  void eliminarPalabra() {
    if (valoresIngresados.length > 2) {
      setState(() {
        valoresIngresados.removeLast();
        Navigator.pop(context);
      });
    }
  }

  void mostrarAlert() {
    AlertDialog dialog = AlertDialog(
      content: Text("¿Está seguro que dese eliminar esa palabra?"),
      actions: [
        TextButton(
            onPressed: () {
              eliminarPalabra();
            },
            child: Text("Sí")),
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("No")),
      ],
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return dialog;
        });
  }

  _InputText() {
    valoresIngresados.add(TextField(
      controller: controladorInput,
      decoration: InputDecoration(
        hintText: "Ingrese un texto",
        helperText: "El texto digitado será mostrado más abajo",
        helperStyle: TextStyle(fontSize: 14.0),
      ),
      /*
      onSubmitted: (String value) {
        agregarValorIngresado();
      },*/
    ));

    valoresIngresados.add(Row(
      children: [
        ElevatedButton(
            onPressed: () {
              agregarValorIngresado();
            },
            child: Text("Agregar Palabra")),
        ElevatedButton(
            onPressed: () {
              mostrarAlert();
            },
            child: Text("Eliminar Palabra"))
      ],
    ));
  }

  void agregarValorIngresado() {
    String valorIngresado = controladorInput.text;
    setState(() {
      var textoIngresado = Text(valorIngresado);
      valoresIngresados.add(textoIngresado);
      controladorInput.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: valoresIngresados);
  }
}
