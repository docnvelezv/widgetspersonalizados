import 'package:appflutter/ejemplodrawer/drawer/CommonDrawer.dart';
import 'package:flutter/material.dart';

class EstructuraAccount extends StatefulWidget {
  static String ruta = "/account";

  @override
  State<StatefulWidget> createState() {
    return _EstructuraAccount();
  }
}

class _EstructuraAccount extends State<EstructuraAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Account"),
        ),
        drawer: CommonDrawer.obtenerDrawer(context),
        body: Container(
          child: Text("Acá puedes ver tu perfil"),
        ));
  }
}
