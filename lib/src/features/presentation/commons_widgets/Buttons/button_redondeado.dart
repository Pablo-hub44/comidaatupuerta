import 'package:comidaatupuerta/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:flutter/material.dart';
//colors
//import 'package:comidaatupuerta/src/colors/colors.dart';

//asi era antes
/*Widget hechobutton(BuildContext context, String labelButton) {
  return Container(
    //container hecho
    width: 370.0,
    height: 45.0,
    margin: EdgeInsets.only(top: 40.0),
    child: RaisedButton(
      onPressed: () {
        Navigator.pushNamed(context, 'Login');
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      color: Theme.of(context).accentColor,
      child: Text(labelButton,
          style: TextStyle(color: Colors.white, fontSize: 20.0)),
    ),
  );
}*/

const shape = StadiumBorder();

//antes Widget button_redondeado({
Widget createButton({
  required BuildContext context, //required = requerido
  double width = 350.0,
  double height = 45.0,
  double radius = 20.0,
  bool isWithIcon = false,
  ImageProvider<Object>? icon, //? va a ser opcional
  required String labelButton,
  Color labelButtoncolor = Colors.white,
  double labelFontSize = 15.0,
  required Color buttonColor,
  OutlinedBorder shape = shape,
  Function()? func,
}) {
  return Container(
    width: width,
    height: height,
    margin: EdgeInsets.only(top: 25.0),
    child: isWithIcon //ya no && icon != null //&& = y
        ? _raisedButtonWithIcon(radius, icon, labelButton, labelButtoncolor,
            labelFontSize, buttonColor, shape, func)
        : _raisedButtonNotIcon(radius, labelButton, labelButtoncolor,
            labelFontSize, buttonColor, shape, func),
  );
}

//AssetImage('assets/facebook.png')  Text('Conectar con facebook',
Widget _raisedButtonWithIcon(
    double radius,
    ImageProvider<Object>? icon,
    String labelButton,
    Color labelButtoncolor,
    double labelFontSize,
    Color color,
    OutlinedBorder shape,
    Function()? func) {
  return ElevatedButton(
      onPressed: func, //() {},
      /*antes shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
      color: color, */
      style: ElevatedButton.styleFrom(
          shape: shape, primary: color, elevation: 0.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: icon ??
                NetworkImage(
                    ""), //?? = null check, podemos llamar una img local o online
            width: 20.0,
            height: 20.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0),
            child: headerText(
              texto: labelButton,
              color: labelButtoncolor,
              fontSize: labelFontSize,
              fontWeight: FontWeight.bold,
            ),
            /*Text(labelButton,
                style: TextStyle(color: Colors.white, fontSize: 15.0)),*/
          ),
        ],
      ));
}

//AssetImage('assets/facebook.png') -- Text('Conectar con facebook'
Widget _raisedButtonNotIcon(
    double radius,
    String labelButton,
    Color labelButtoncolor,
    double labelFontSize,
    Color color,
    OutlinedBorder shape,
    Function()? func) {
  return ElevatedButton(
      onPressed: func,
      /*antes shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
      color: color,*/
      style: ElevatedButton.styleFrom(
        shape: shape,
        primary: color,
        elevation: 0.5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10.0),
            child: headerText(
              texto: labelButton,
              color: labelButtoncolor,
              fontSize: labelFontSize,
              fontWeight: FontWeight.bold,
            ),

            /*antes del headertext Text(labelButton,
                style: TextStyle(color: Colors.white, fontSize: 15.0)),*/
          ),
        ],
      ));
}
