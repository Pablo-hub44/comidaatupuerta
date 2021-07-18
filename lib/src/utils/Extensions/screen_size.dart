import 'package:flutter/material.dart';
/* asi era antes
double screenWidth;
double screenHeight;

//como hacemos una extension?
//la nomenclatura de una extension es
//extension publica
extension ScreenSize on double {
  double getScreenWidth({BuildContext context, double multiplier = null}) {
    var width = MediaQuery.of(context).size.width;
    if (multiplier != null) {
      width = width * multiplier;
    }
    return width;
  }

  double getScreenHeight({BuildContext context, double multiplier = null}) {
    var height = MediaQuery.of(context).size.height;
    if (multiplier != null) {
      height = height * multiplier;
    }
    return height;
  }
}*/

//? = opcional
double getScreenWidth({required BuildContext context, double? multiplier}) {
  var width = MediaQuery.of(context).size.width;
  if (multiplier != null) {
    width = width * multiplier;
  }
  return width;
}

double getScreenHeight({required BuildContext context, double? multiplier}) {
  var height = MediaQuery.of(context).size.height;
  if (multiplier != null) {
    height = height * multiplier;
  }
  return height;
}
