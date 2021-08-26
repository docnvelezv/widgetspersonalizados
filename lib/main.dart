import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

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

class ContactCard extends StatelessWidget {
  String contactName = "";
  String contactPhone = "";
  Widget contactIcon = Icon(
    Icons.account_circle,
    size: 22,
    color: Colors.blueAccent,
  );

  ContactCard(this.contactName, this.contactPhone, this.contactIcon);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        Text(this.contactName,
            style: TextStyle(
                color: Colors.black54,
                fontSize: 32.0,
                fontWeight: FontWeight.bold)),
        Text(this.contactPhone,
            style: TextStyle(
              color: Colors.black26,
              fontSize: 22.0,
            )),
        contactIcon
      ],
    ));
  }
}
