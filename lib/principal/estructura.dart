import 'package:flutter/material.dart';
import 'package:appflutter/principal/contact_card.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Barra principal de mi app")),
        body: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ContactCard(
                "Juan Jose Rodriguez", "+313000000", Icon(Icons.access_alarm)),
            ContactCard(
                "Maria Sanchez", "+3139999999", Icon(Icons.access_time_sharp)),
          ],
        )));
  }
}
