import 'package:appflutter/ejemplodrawer/account/account.dart';
import 'package:appflutter/ejemplodrawer/help/help.dart';
import 'package:appflutter/ejemplodrawer/home/home.dart';
import 'package:appflutter/ejemplodrawer/settings/settings.dart';
import 'package:flutter/material.dart';

class CommonDrawer {
  static ListTile obtenerElemento(
      Icon icono, String nombre, String ruta, BuildContext contexto) {
    return ListTile(
      leading: icono,
      title: Text(nombre),
      onTap: () {
        Navigator.pushNamed(contexto, ruta);
      },
    );
  }

  static Drawer obtenerDrawer(BuildContext contexto) {
    return Drawer(
      child: ListView(
        children: [
          obtenerElemento(Icon(Icons.home), "Home", HomeDrawer.ruta, contexto),
          obtenerElemento(
              Icon(
                Icons.settings_applications,
              ),
              "Settings",
              EstructuraSettings.ruta,
              contexto),
          obtenerElemento(Icon(Icons.account_circle), "Account",
              EstructuraAccount.ruta, contexto),
          obtenerElemento(
              Icon(Icons.help), "Help", EstructuraHelp.ruta, contexto),
        ],
      ),
    );
  }
}
