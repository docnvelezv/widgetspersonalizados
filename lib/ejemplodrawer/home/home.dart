import 'package:appflutter/ejemplodrawer/account/account.dart';
import 'package:appflutter/ejemplodrawer/help/help.dart';
import 'package:appflutter/ejemplodrawer/settings/settings.dart';
import 'package:flutter/material.dart';

class HomeDrawer extends StatefulWidget {
  static String ruta = "/";

  @override
  State<StatefulWidget> createState() {
    return _HomeDrawer();
  }
}

class _HomeDrawer extends State<HomeDrawer> {
  ListTile obtenerElemento(Icon icono, String nombre, String ruta) {
    return ListTile(
      leading: icono,
      title: Text(nombre),
      onTap: () {
        Navigator.pushNamed(context, ruta);
      },
    );
  }

  Drawer obtenerDrawer() {
    return Drawer(
      child: ListView(
        children: [
          obtenerElemento(Icon(Icons.home), "Home", HomeDrawer.ruta),
          obtenerElemento(Icon(Icons.settings_applications), "Settings",
              EstructuraSettings.ruta),
          obtenerElemento(
              Icon(Icons.account_circle), "Account", EstructuraAccount.ruta),
          obtenerElemento(Icon(Icons.help), "Help", EstructuraHelp.ruta),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ejemplo menu tipo Drawer"),
      ),
      drawer: obtenerDrawer(),
      body: Container(
        child: Text("Este es el home"),
      ),
    );
  }
}
