import 'package:flutter/material.dart';

Widget headerText(
    {String texto = "",
    Color color = Colors.black,
    FontWeight fontWeight = FontWeight.bold,
    double fontSize,
    TextAlign textAlign = TextAlign.justify
    //le agregge este de arriba para que este justificado de manera predeterminada
    }) {
  return Text(
    texto,
    textAlign: textAlign,
    style: TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: fontSize,
    ),
  );
}
/*
return Text(
    'COMIDA A TU PUERTA',
    style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 45.0,
    ),
  );
}
 */
