import 'package:appflutter/ejemplodrawer/account/account.dart';
import 'package:appflutter/ejemplodrawer/help/help.dart';
import 'package:flutter/material.dart';
import 'package:appflutter/ejemplodrawer/home/home.dart';
import 'package:appflutter/ejemplodrawer/settings/settings.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      HomeDrawer.ruta: (BuildContext context) => HomeDrawer(),
      EstructuraSettings.ruta: (BuildContext context) => EstructuraSettings(),
      EstructuraAccount.ruta: (BuildContext context) => EstructuraAccount(),
      EstructuraHelp.ruta: (BuildContext context) => EstructuraHelp(),
    },
  ));
}
