import 'package:comidaatupuerta/src/colors/colors.dart';
import 'package:comidaatupuerta/src/features/presentation/commons_widgets/Buttons/button_redondeado.dart';
//import 'package:comidaatupuerta/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:flutter/material.dart';

Widget popularesCard(
    {required BuildContext context,
    double marginTop = 0.0,
    double marginRight = 0.0,
    double marginBottom = 0.0,
    double marginLeft = 10.0,
    required ImageProvider<Object> image,
    required String title,
    required String subtitle,
    required String review,
    required String rating,
    String buttonText = '',
    required bool hasActionButton}) {
  return Column(
    children: [
      Container(
        //margin: EdgeInsets.only(left: 10.0),
        margin: EdgeInsets.only(
            top: marginTop,
            right: marginRight,
            bottom: marginBottom,
            left: marginLeft),
        padding: EdgeInsets.symmetric(vertical: 10.0),
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
              padding: EdgeInsets.only(left: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 7.0),
                      child:
                          /*headerText("Andy & Cindy Company", Colors.black,
                        FontWeight.bold, 17.0),la version anterior*/
                          /*headerText(
                              texto: "Andy & Cindy Company",
                              color: Colors.black,
                              fontSize: 17.0),antes era asi*/
                          Text(title,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 17.0,
                              ))),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(bottom: 5.0),
                    child: Text(subtitle, //"87 Botsford Circle Apt",
                        style: TextStyle(
                            color: gris,
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0)),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: amarillo, size: 16.0),
                      Text(review, //"4.5",
                          style: TextStyle(
                              color: gris,
                              fontWeight: FontWeight.bold,
                              fontSize: 13.0)),
                      Container(
                        margin: EdgeInsets.only(left: 6.0),
                        child: Text(rating, //"230 rating",
                            style: TextStyle(
                                color: gris,
                                fontWeight: FontWeight.w500,
                                fontSize: 13.0)),
                      ),
                      Container(
                        //margin: EdgeInsets.only(left: 36.0),
                        margin: EdgeInsets.symmetric(horizontal: 15.0),
                        width: 105.0, //antes 110
                        height: 18.0,
                        child: hasActionButton
                            ? createButton(
                                context: context,
                                buttonColor: orange,
                                labelButton: buttonText,
                                labelFontSize: 12.0,
                              )

                            /*RaisedButton(
                                elevation: 0.5,
                                shape: StadiumBorder(),
                                color:
                                    orange, //antes Theme.of(context).accentColor,
                                onPressed: () {},
                                child: Text(
                                  buttonText, //"Entrega",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Colors.white),
                                ),
                              )*/
                            : Text(''),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
