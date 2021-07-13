//UI
import 'dart:ui';

import 'package:comidaatupuerta/src/colors/colors.dart';
import 'package:comidaatupuerta/src/features/presentation/commons_widgets/Buttons/button_redondeado.dart';
import 'package:flutter/material.dart';
//Services
import 'package:flutter/services.dart';
//Commons Widgets
import 'package:comidaatupuerta/src/features/presentation/commons_widgets/Headers/header_text.dart';

class BienvenidaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.black));

    return Scaffold(
        body: Stack(
      //esto es para poner la imagen de fondo
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1502301103665-0b95cc738daf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
            child: Container(
              color: Colors.black.withOpacity(0.3),
            ),
          ),
        ),
        Column(
          //el texto de un Text tamaño 45 color blanco , centrado
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              alignment: Alignment.centerLeft,
              child:
                  /*headerText(
                  'COMIDA A TU PUERTA', Colors.white, FontWeight.bold, 45.0),*/
                  headerText(
                      texto: 'COMIDA A TU \nPUERTA',
                      color: Colors.white,
                      fontSize: 45.0),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
              child: Text(
                  'Encuentra la localización exacta de los restaurantes cerca de ti.',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 17.0,
                  )),
            ),
            SizedBox(height: 10.0),
            createButton(
                labelButton: 'Ingresar',
                buttonColor: orange,
                func: () {
                  Navigator.pushNamed(context, 'Login');
                }),
            createButton(
              labelButton: 'Conectar con facebook',
              buttonColor: fbButtonColor,
              //shape : shape,
              isWithIcon: true,
              icon: AssetImage('assets/facebook.png'),
              func: () => print("gotofacebbok"),
            ),
            //aqui va el boton de ingresar con facebook
          ],
        )
      ],
    ));
  }
}

/*
Container(
              //container login
              width: 350.0,
              height: 45.0,
              margin: EdgeInsets.only(top: 40.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'Login');
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                color: Theme.of(context).accentColor,
                child: Text('Ingresar',
                    style: TextStyle(color: Colors.white, fontSize: 15.0)),
              ),
            ),
 */
