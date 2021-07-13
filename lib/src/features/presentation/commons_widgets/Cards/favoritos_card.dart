import 'package:comidaatupuerta/src/colors/colors.dart';
import 'package:comidaatupuerta/src/features/presentation/commons_widgets/Buttons/button_redondeado.dart';
import 'package:comidaatupuerta/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:comidaatupuerta/src/utils/styles/box_decorations_shadows.dart';
import 'package:flutter/material.dart';

Widget favoritosCard(
    {BuildContext context,
    double marginTop = 15.0,
    double marginRight = 0.0,
    double marginBottom = 0.0,
    double marginLeft = 0.0,
    ImageProvider<Object> image,
    String title,
    String subtitle,
    String review,
    String rating,
    String buttonText = '',
    bool hasActionButton,
    bool isFavorito = true}) {
  return Container(
    //margin: EdgeInsets.only(left: 10.0),
    margin: EdgeInsets.only(
        top: marginTop,
        right: marginRight,
        bottom: marginBottom,
        left: marginLeft),
    padding: EdgeInsets.only(left: 10.0, top: 10, bottom: 20.0),
    width: double.infinity,
    decoration: createBoxDecorationWithShadow(),
    /*decoration: BoxDecoration(
        //para ponerle sombra
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(218, 211, 215, 1.0),
              offset: Offset(0, 5), //la direccion de la sombra x, y
              blurRadius: 10.0 //el difuminado
              )
        ]),*/
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image(
            width: 80.0,
            height: 80.0,
            fit: BoxFit.cover,
            image: image,
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, //arriba a abajo
            crossAxisAlignment: CrossAxisAlignment.start, //los lados <->
            children: [
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 7.0),
                      child: headerText(
                          texto: title,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0)),
                  SizedBox(width: 25.0),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.bookmark,
                        size: 35.0,
                        color: isFavorito ? rosa : Colors.grey[300],
                      ))
                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(bottom: 5.0),
                child: headerText(
                    texto: subtitle,
                    color: gris,
                    fontWeight: FontWeight.w600,
                    fontSize: 14.0),
              ),
              Row(
                children: [
                  Icon(Icons.star, color: amarillo, size: 16.0),
                  headerText(
                      texto: review,
                      fontWeight: FontWeight.w500,
                      fontSize: 13.5),
                  headerText(
                      texto: rating,
                      color: gris,
                      fontWeight: FontWeight.w500,
                      fontSize: 13.0),
                  /*Container(
                    margin: EdgeInsets.only(left: 15.0),
                    width: 100.0,
                    height: 25.0,
                    child: createButton(
                      buttonColor: orange,
                      labelButton: buttonText,
                      labelFontSize: 11.0,
                      labelButtoncolor: Colors.black,
                    ),

                    /*RaisedButton(
                      onPressed: () {},
                      elevation: 0.5,
                      shape: StadiumBorder(),
                      color: orange,
                      textColor: Colors.white,
                      child: headerText(
                          texto: buttonText,
                          fontSize: 11.0,
                          color: Colors.white),
                    ),*/
                  ),*/
                ],
              )
            ],
          ),
        ),
      ],
    ),
  );
}
