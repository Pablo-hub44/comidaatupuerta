import 'package:flutter/material.dart';

const borderRadius = BorderRadius.all(Radius.circular(20.0));
const boxShadows = [
  BoxShadow(
      color: Color.fromRGBO(218, 211, 215, 1.0),
      offset: Offset(0, 5), //la direccion de la sombra x, y
      blurRadius: 10.0 //el difuminado
      )
];

Decoration createBoxDecorationWithShadow(
    {BorderRadiusGeometry borderRadius = borderRadius,
    Color containerColor = Colors.white,
    List<BoxShadow> boxShadows = boxShadows}) {
  return BoxDecoration(
      //para ponerle sombra
      borderRadius: borderRadius,
      color: containerColor,
      boxShadow: boxShadows);
}
