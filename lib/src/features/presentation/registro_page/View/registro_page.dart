import 'package:comidaatupuerta/src/features/presentation/commons_widgets/Buttons/button_redondeado.dart';
import 'package:flutter/material.dart';
//Colors
import 'package:comidaatupuerta/src/colors/colors.dart';
//common widgets
import 'package:comidaatupuerta/src/features/presentation/commons_widgets/backbuttons/back_button.dart';
import 'package:comidaatupuerta/src/features/presentation/commons_widgets/Headers/header_text.dart';

class RegistroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Builder(builder: (BuildContext context) {
          return backButton(context, Colors.black);
        }),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: [
              /*headerText(
                  'Crea una cuenta',
                  primaryColor, //antes Theme.of(context).primaryColor,
                  FontWeight.bold,
                  30.0),*/
              headerText(
                  texto: 'Crea una cuenta',
                  color: primaryColor, //antes Theme.of(context).primaryColor,
                  fontSize: 30.0),
              _usernameInput(context),
              _emailInput(context),
              _phoneInput(context),
              _cumpleanosInput(context),
              _passwordInput(context),
              //_buttonRegistro(context),
              createButton(
                  context: context,
                  //shape : shape,
                  buttonColor: orange,
                  labelButton: 'Registrarse',
                  func: () {}),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
                child: Text(
                  'Al hacer click usted acepta los términos y condiciones',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 13.0,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _usernameInput(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 40.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: bnInputs, borderRadius: BorderRadius.circular(40.0)),
    child: TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          hintText: 'Nombre de usuario',
          border: OutlineInputBorder(
              borderSide: BorderSide.none //para quitar la linea fea del input
              )),
    ),
  );
}

Widget _emailInput(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: bnInputs, borderRadius: BorderRadius.circular(40.0)),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'Email',
          border: OutlineInputBorder(
              borderSide: BorderSide.none //para quitar la linea fea del input
              )),
    ),
  );
}

Widget _phoneInput(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: bnInputs, borderRadius: BorderRadius.circular(40.0)),
    child: TextField(
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
          hintText: 'Telefono',
          border: OutlineInputBorder(
              borderSide: BorderSide.none //para quitar la linea fea del input
              )),
    ),
  );
}

Widget _cumpleanosInput(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: bnInputs, borderRadius: BorderRadius.circular(40.0)),
    child: TextField(
      keyboardType: TextInputType.datetime,
      decoration: InputDecoration(
          hintText: 'Fecha de cumpleaños',
          border: OutlineInputBorder(
              borderSide: BorderSide.none //para quitar la linea fea del input
              )),
    ),
  );
}

Widget _passwordInput(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: bnInputs, borderRadius: BorderRadius.circular(40.0)),
    child: TextField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Contraseña',
          border: OutlineInputBorder(
              borderSide: BorderSide.none //para quitar la linea fea del input
              )),
    ),
  );
}

/*Widget _buttonRegistro(BuildContext context) {
  return Container(
    //container enviar
    width: 370.0,
    height: 45.0,
    margin: EdgeInsets.only(top: 40.0),
    child: RaisedButton(
        onPressed: () {},
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        color: Theme.of(context).accentColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Registrarse',
                style: TextStyle(color: Colors.white, fontSize: 18.0)),
          ],
        )),
  );
}*/
