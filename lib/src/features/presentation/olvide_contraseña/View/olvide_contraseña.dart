import 'package:comidaatupuerta/src/colors/colors.dart';
import 'package:comidaatupuerta/src/features/presentation/commons_widgets/Alertas/alert_dialog.dart';
import 'package:comidaatupuerta/src/features/presentation/commons_widgets/backbuttons/back_button.dart';
import 'package:comidaatupuerta/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:comidaatupuerta/src/features/presentation/commons_widgets/Buttons/button_redondeado.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.black));
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Builder(
          builder: (BuildContext context) {
            return backButton(context, Colors.black);
          },
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: [
              /*headerText(
                  'Olvide mi contraseña',
                  primaryColor, //antes Theme.of(context).primaryColor,
                  FontWeight.bold,
                  30.0),*/
              headerText(
                  texto: 'Olvide mi contraseña',
                  color: primaryColor,
                  fontSize: 30.0),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text(
                    'Porfavor escribe tu email. Recibiras un link para crear una nueva contraseña via email.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 16.0)),
              ),
              _emailInput(),
              createButton(
                buttonColor: orange,
                labelButton: 'Enviar',
                shape: shape,
                func: () => _showAlerta(context),
              ),
              /*GestureDetector(
                  onTap: () => _showAlerta(context),
                  child:
                      createButton(color: orange, labelButton: 'Enviar'),
                ),*/
              //_buttonSend(context),
            ],
          ),
        ),
      ),
    );
  }
} //clase

Widget _emailInput() {
  return Container(
    margin: EdgeInsets.only(top: 40.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: Color.fromRGBO(142, 142, 147, 1.2),
        borderRadius: BorderRadius.circular(30.0)),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'Ingresa tu email',
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          )),
    ),
  );
}

/*Widget _buttonSend(BuildContext context) { ya no
  return Container(
    //container enviar
    width: 350.0,
    height: 45.0,
    margin: EdgeInsets.only(top: 40.0),
    child: RaisedButton(
        onPressed: () {
          //_showAlerta(context);
        },
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        color: Theme.of(context).accentColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Enviar',
                style: TextStyle(color: Colors.white, fontSize: 18.0)),
          ],
        )),
  );
}*/

/*void _showAlerta(BuildContext context) {lo movi a alert_dialog.dart
  showDialog( 
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          content: Container(
            height: 350.0,
            child: Column(
              children: [
                Image(
                  image: AssetImage('assets/lock.png'),
                  width: 130.0,
                  height: 130.0,
                ),
                Container(
                    margin: EdgeInsets.all(15.0),
                    child: headerText('Tu contraseña a sido cambiada',
                        Theme.of(context).primaryColor, FontWeight.bold, 20.0)),
                Container(
                  margin: EdgeInsets.all(15.0),
                  child: Text("Reciviras un email con un codigo",
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 15.0)),
                ),
                _hechobutton(context),
              ],
            ),
          ),
        );
      });
}*/

/*Widget _hechobutton(BuildContext context) { movido tambien
  return Container(
    //container hecho
    width: 370.0,
    height: 45.0,
    margin: EdgeInsets.only(top: 40.0),
    child: RaisedButton(
        onPressed: () {
          Navigator.pushNamed(context, 'Login');
        },
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(17.0)),
        color: Theme.of(context).accentColor,
        child: Row(
          children: [
            Text('Hecho',
                style: TextStyle(color: Colors.white, fontSize: 20.0)),
          ],
        )),
  );
}*/

void _showAlerta(BuildContext context) {
  mostrarAlertaDialog(
    context,
    AssetImage('assets/lock.png'),
    'Tu contraseña a sido cambiada',
    "Reciviras un email con un codigo en los proximos minutos.",
    createButton(
        labelButton: "Hecho",
        buttonColor: orange,
        //shape : shape,
        func: () {
          Navigator.pushNamed(context, 'Login');
        }),
    /*GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'Login');
      },
      child: createButton(labelButton: "Hecho", color: orange),
    ),*/
  );
}
