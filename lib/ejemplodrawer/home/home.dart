import 'package:appflutter/ejemplodrawer/drawer/CommonDrawer.dart';
import 'package:flutter/material.dart';

class HomeDrawer extends StatefulWidget {
  static String ruta = "/";

  @override
  State<StatefulWidget> createState() {
    return _HomeDrawer();
  }
}

class _HomeDrawer extends State<HomeDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ejemplo menu tipo Drawer"),
      ),
      drawer: CommonDrawer.obtenerDrawer(context),
      body: Container(
        child: Text("Este es el home"),
      ),
    );
  }
}
