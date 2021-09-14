import 'package:flutter/material.dart';
import 'package:appflutter/ejemplotextfieldyalert/textfield.dart';

class VistaInputYAlert extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _VistaInputYAlert();
  }
}

class _VistaInputYAlert extends State<VistaInputYAlert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Ejemplo de TextField y Alert"),
        ),
        body: Container(
          child: Column(
            children: [InputText()],
          ),
        ));
  }
}
