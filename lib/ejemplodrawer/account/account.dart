import 'package:appflutter/ejemplodrawer/drawer/CommonDrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EstructuraAccount extends StatefulWidget {
  static String ruta = "/account";

  @override
  State<StatefulWidget> createState() {
    return _EstructuraAccount();
  }
}

class _EstructuraAccount extends State<EstructuraAccount> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Account"),
        ),
        drawer: CommonDrawer.obtenerDrawer(context),
        body: Container(
            child: Form(
          key: formKey,
          child: Column(
            children: [
              obtenerCampoEmail(),
              obtenerCampoContrasena(),
              obtenerBotonValidar()
            ],
          ),
        )));
  }

  TextFormField obtenerCampoEmail() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          labelText: "Correo electrónico", hintText: "john.doe@mail.com"),
      validator: (value) {
        String patron = r'^[^@]+@[^@]+\.[^@]+$';
        RegExp regExp = new RegExp(patron);
        if (regExp.hasMatch(value!)) {
          return null;
        } else {
          return 'El email no es valido';
        }
      },
    );
  }

  TextFormField obtenerCampoContrasena() {
    return TextFormField(
        obscureText: true,
        decoration:
            InputDecoration(labelText: "Contraseña", hintText: "Contraseña"),
        validator: (value) {
          if (value!.length > 5) {
            return null;
          } else {
            return 'La longitud minima para la contraseña es 6 caracteres';
          }
        });
  }

  ElevatedButton obtenerBotonValidar() {
    return ElevatedButton(
        onPressed: () {
          if (formKey.currentState!.validate()) {
            formKey.currentState!.reset();
          }
        },
        child: Text("Validar"));
  }
}
