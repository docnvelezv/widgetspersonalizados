import 'package:flutter/material.dart';

class ImagenPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imagen = Container(
      margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
      width: 80.0,
      height: 320.0,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(
              fit: BoxFit.cover,
              //image: AssetImage("assets/images/micasita.jpg")
              image: NetworkImage(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'))),
    );

    return imagen;
  }
}
