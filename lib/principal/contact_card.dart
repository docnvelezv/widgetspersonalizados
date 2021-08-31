import 'package:flutter/material.dart';

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
