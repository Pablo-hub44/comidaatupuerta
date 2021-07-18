import 'package:comidaatupuerta/src/features/presentation/commons_widgets/Buttons/button_redondeado.dart';
import 'package:flutter/material.dart';

//widgets
import 'package:comidaatupuerta/src/colors/colors.dart';
import 'package:comidaatupuerta/src/features/presentation/commons_widgets/backbuttons/back_button.dart';

//ui
import 'package:flutter/services.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.black));

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image(
                width: double.infinity,
                height: 350.0,
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
              ),
              Container(
                margin: EdgeInsets.only(top: 50.0),
                child: backButton(context, Colors.white),
              )
            ],
          ),
          Transform.translate(
            offset: Offset(0.0, -18.0),
            child: Container(
              width: double.infinity,
              height: 500,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Center(
                  child: Column(
                    children: [
                      Text("Bienvenido",
                          style: TextStyle(
                            //color: Theme.of(context).primaryColor,
                            color: primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                          )),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text("Ingresa tu cuenta",
                          style: TextStyle(
                            color: gris,
                            fontWeight: FontWeight.w500,
                            fontSize: 15.0,
                          )),
                      _emailInput(),
                      _passwordInput(),
                      createButton(
                          context: context,
                          buttonColor: orange,
                          labelButton: 'Ingresar',
                          //shape : shape,
                          func: () {
                            Navigator.pushNamed(context, 'tabs');
                          }),
                      /*GestureDetector( cambiamos los gesturedetectors
                          onTap: () {
                            Navigator.pushNamed(context, 'tabs');
                          },
                          child: createButton(
                              color: orange, labelButton: "Ingresar")),*/
                      SizedBox(height: 30.0),
                      Container(
                        margin: EdgeInsets.only(top: 30.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'forgot-password');
                          },
                          child: Text('Olvidaste tu contraseña?',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 17.0,
                              )),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('No tienes una cuenta?',
                                style: TextStyle(
                                  color: gris,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.0,
                                )),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, 'registro');
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 10.0),
                                child: Text('Registrarse',
                                    style: TextStyle(
                                      //color: Theme.of(context).accentColor,
                                      color: orange,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15.0,
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _emailInput() {
  return Container(
    margin: EdgeInsets.only(top: 30.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: Color.fromRGBO(142, 142, 147, 1.2),
        borderRadius: BorderRadius.circular(30.0)),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'Email',
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          )),
    ),
  );
}

Widget _passwordInput() {
  return Container(
    margin: EdgeInsets.only(top: 15.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: Color.fromRGBO(142, 142, 147, 1.2),
        borderRadius: BorderRadius.circular(30.0)),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Contraseña',
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          )),
    ),
  );
}

/*Widget _buttonLogin(BuildContext context) { ya no se ocupa
  return Container(
    //container login
    width: 370.0,
    height: 45.0,
    margin: EdgeInsets.only(top: 30.0),
    // ignore: deprecated_member_use
    child: RaisedButton(
        onPressed: () {
          Navigator.pushNamed(context, 'tabs');
        },
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        color: Theme.of(context).accentColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Ingresar',
                style: TextStyle(color: Colors.white, fontSize: 18.0)),
          ],
        )),
  );
}*/
