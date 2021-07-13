import 'package:comidaatupuerta/src/colors/colors.dart';
import 'package:flutter/material.dart';
//HeaderText
import 'package:comidaatupuerta/src/features/presentation/commons_widgets/Headers/header_text.dart';

//AssetImage('assets/lock.png') 'Tu contraseña a sido cambiada' "Reciviras un email con un codigo"
//'Hecho'
void mostrarAlertaDialog(BuildContext context, ImageProvider<Object> imagePath,
    String headerTitulo, String headerSubtitulo, Widget hechobuttonW) {
  showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          content: Container(
            height: 340.0,
            child: Column(
              children: [
                Image(
                  image: imagePath,
                  width: 130.0,
                  height: 130.0,
                ),
                Container(
                  margin: EdgeInsets.all(15.0),
                  child:
                      /*headerText(
                      headerTitulo, primaryColor, FontWeight.bold, 20.0),*/
                      headerText(
                          texto: headerTitulo,
                          color: primaryColor,
                          fontSize: 20.0),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
                  child: Text(headerSubtitulo,
                      style: TextStyle(
                          //color: Theme.of(context).primaryColor,
                          color: primaryColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 15.0)),
                ),
                hechobuttonW
              ],
            ),
          ),
        );
      });
}
