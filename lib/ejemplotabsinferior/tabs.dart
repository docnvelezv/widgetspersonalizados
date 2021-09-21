import 'package:appflutter/ejemplotabs/tabs/account/estructura.dart';
import 'package:appflutter/ejemplotabs/tabs/help/estructura.dart';
import 'package:appflutter/ejemplotabs/tabs/home/estructura.dart';
import 'package:appflutter/ejemplotabs/tabs/settings/estructura.dart';
import 'package:appflutter/ejemplotabsinferior/tabbarpersonalizado.dart';
import 'package:flutter/material.dart';

class EjemploTabs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EjemploTabs();
  }
}

class _EjemploTabs extends State<EjemploTabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(title: Text("Menu con Tabs")),
        body: TabBarView(
          children: [
            EstructuraHome(),
            EstructuraSettings(),
            EstructuraAccount(),
            EstructuraHelp()
          ],
        ),
        bottomNavigationBar: TabBarPersonalizado(
            Colors.blue,
            TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.settings_applications)),
                Tab(icon: Icon(Icons.account_circle)),
                Tab(icon: Icon(Icons.help))
              ],
            )),
      ),
    );
  }
}
