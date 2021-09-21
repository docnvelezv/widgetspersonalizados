import 'package:appflutter/ejemplodrawer/drawer/CommonDrawer.dart';
import 'package:flutter/material.dart';

class EstructuraSettings extends StatefulWidget {
  static String ruta = "/settings";

  @override
  State<StatefulWidget> createState() {
    return _EstructuraSettings();
  }
}

class _EstructuraSettings extends State<EstructuraSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Settings"),
        ),
        drawer: CommonDrawer.obtenerDrawer(context),
        body: Container(
          child: Text("Acá puedes hacer configuraciones"),
        ));
  }
}
