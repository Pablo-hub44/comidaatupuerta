import 'package:comidaatupuerta/src/colors/colors.dart';
import 'package:comidaatupuerta/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:flutter/material.dart';

class EmptyOrderView extends StatelessWidget {
  //el stateless se pone cuando no se usa estados
  //const EmptyView({Key key}) : super(key: key); esto nop

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bggreyPage,
      appBar: AppBar(
        centerTitle: true,
        elevation:
            0.5, //es como una ilusion optica de que un componente esta por encima de otro
        leading: Text(''), // es lo que va a la izquierda del appbar
        backgroundColor: blanco,

        title: headerText(
            //textAlign: TextAlign.center,
            texto: 'Mi orden',
            color: primaryColor,
            fontSize: 18.0,
            fontWeight: FontWeight.w600),

        actions: [],
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                width: 216.0,
                height: 216.0,
                image: AssetImage('assets/emptyOrder.png'),
                color: orange,
              ),
              Container(
                margin: EdgeInsets.only(top: 30.0),
                child: headerText(
                    texto: 'Card Empty',
                    color: gris,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0),
                padding: EdgeInsets.only(left: 35.0, right: 35.0),
                child: headerText(
                    texto:
                        'Buena comida siempre! Vamos ordena algo delicioso del menu.',
                    textAlign: TextAlign.center,
                    color: gris,
                    fontSize: 17.0,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }
}
