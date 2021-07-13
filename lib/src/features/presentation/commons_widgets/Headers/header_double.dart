import 'package:comidaatupuerta/src/colors/colors.dart';
import 'package:comidaatupuerta/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:flutter/material.dart';

Widget headerDoubleText({String textHeader, String textAction, Function func}) {
  return Container(
    child: Row(
      children: [
        headerText(texto: textHeader, fontSize: 20.0),
        Spacer(),
        GestureDetector(
          onTap: func,
          child: headerText(
              texto: textAction,
              color: orange,
              fontWeight: FontWeight.w500,
              fontSize: 16.0),
        ),
      ],
    ),
  );
}
