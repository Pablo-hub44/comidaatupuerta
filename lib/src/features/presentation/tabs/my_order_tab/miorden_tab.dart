//import 'dart:js';

import 'package:comidaatupuerta/src/colors/colors.dart';
import 'package:comidaatupuerta/src/features/presentation/commons_widgets/Buttons/button_redondeado.dart';
import 'package:comidaatupuerta/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:comidaatupuerta/src/features/presentation/tabs/my_order_tab/components/empty_order_view.dart';
import 'package:flutter/material.dart';

class MiordenTab extends StatefulWidget {
  MiordenTab({Key? key}) : super(key: key);

  @override
  _MiordenTabState createState() => _MiordenTabState();
}

class _MiordenTabState extends State<MiordenTab> {
  final emptyOrderState = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bggreyPage,
      //body: emptyOrderState ? Text('Empty View') : Text('Order View'), antes
      body: emptyOrderState
          ? EmptyOrderView()
          : CustomScrollView(
              slivers: [
                SliverAppBar(
                  centerTitle: true,
                  elevation:
                      0.5, //es como una ilusion optica de que un componente esta por encima de otro
                  leading: Text(''), // es lo que va a la izquierda del appbar
                  backgroundColor: blanco,
                  title: headerText(
                      texto: 'Mi orden',
                      color: primaryColor,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600),
                  actions: [],
                ),
                SliverList(
                    delegate: SliverChildListDelegate([
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        _orders(context),
                        SizedBox(height: 45.0),
                        _checkoutResume(context),
                      ],
                    ),
                  )
                ]))
              ],
            ),
    );
  }
}

Widget _orders(BuildContext context) {
  return Column(
    children: [
      _cardOrder(context),
    ],
  );
}

Widget _cardOrder(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(left: 10.0, right: 10.0),
    margin: EdgeInsets.symmetric(vertical: 10.0),
    width: double.infinity, //abarcar todo el ancho de la pantalla
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Color.fromRGBO(248, 248, 248, 1.0), //color del fondo medio gris
        boxShadow: [
          //la sombra
          BoxShadow(
            color: Color.fromRGBO(210, 211, 215, 1.0),
            spreadRadius: 1.0,
            blurRadius: 4.0,
          )
        ]),
    child: Column(
      children: [
        Row(
          children: [_cardOrderTopContent(context)],
        ),
        Column(
          children: [
            _items(context),
            _items(context),
            _items(context),
            _items(context),
          ],
        ),
        _moreContenido(context),
      ],
    ),
  );
}

Widget _cardOrderTopContent(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start, //<->
      children: [
        Container(
          margin: EdgeInsets.only(top: 7.0, bottom: 7.0, right: 20.0),
          child: headerText(
              texto: "Little Creatures - Club Street",
              fontSize: 17.0,
              fontWeight: FontWeight.bold),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start, //<->
            children: [
              Icon(Icons.location_on, color: gris, size: 16.0),
              headerText(
                  texto: "87 Botsford Circle Apt",
                  color: gris,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.0),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                width: 110.0,
                height: 20.0,
                child: createButton(
                    context: context,
                    buttonColor: orange,
                    labelButton: 'Envio gratis',
                    labelFontSize: 11),
                /*RaisedButton(
                    elevation: 0.5,//110.0,
                    shape: StadiumBorder(),
                    color: orange,
                    onPressed: () {},
                    child:
                        /*Text('Free Delivery', style: TextStyle(fontSize: 11.0)),*/
                        headerText(
                            texto: "Envio Gratis",
                            fontSize: 11.0,
                            color: blanco)),*/
              ),
            ],
          ),
        )
      ],
    ),
  );
}

Widget _items(context) {
  return Container(
    decoration: BoxDecoration(
      border: Border(bottom: BorderSide(color: Theme.of(context).dividerColor)),
    ),
    child: ListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headerText(
              texto: "El especial Bhel",
              color: orange,
              fontWeight: FontWeight.w400,
              fontSize: 15.0),
          headerText(
              texto: "Mezcla de vegetales, pollo y huevo",
              color: gris,
              fontWeight: FontWeight.w400,
              fontSize: 13.0)
        ],
      ),
      trailing: headerText(
          texto: "99.0 MXN",
          color: gris,
          fontWeight: FontWeight.w400,
          fontSize: 15.0), //lo que saldra a la derecha
    ),
  );
}

Widget _moreContenido(context) {
  return Container(
    child: ListTile(
      title: headerText(
          texto: "Agregar mas items",
          color: rosa,
          fontWeight: FontWeight.w600,
          fontSize: 17.0),
    ),
  );
}

Widget _checkoutResume(context) {
  return Container(
    padding: EdgeInsets.all(10.0),
    margin: EdgeInsets.symmetric(vertical: 10.0),
    width: double.infinity, //abarque todo el ancho de la pantalla
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: blanco,
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(210, 211, 215, 1.0), //la sombra
              spreadRadius: 1.0,
              blurRadius: 4.0)
        ]),
    child: Column(
      children: [
        _itemCheckoutResume(
            title: 'Subtotal', value: '300.00 MXN', context: context),
        _itemCheckoutResume(title: 'IVA', value: '30.00 MXN', context: context),
        _itemCheckoutResume(
            title: 'Entrega', value: 'gratis', context: context),
        _buttonCheckout(context),
      ],
    ),
  );
}

Widget _itemCheckoutResume(
    {title: String, value: String, context: BuildContext}) {
  return Container(
    decoration: BoxDecoration(
      border: Border(bottom: BorderSide(color: Theme.of(context).dividerColor)),
    ),
    child: ListTile(
      title: headerText(
          texto: title,
          fontWeight: FontWeight.w400,
          fontSize: 15.0), //la izquierda
      trailing: headerText(
          texto: value,
          fontWeight: FontWeight.w500,
          fontSize: 15.0), //la derecha en el listlite
    ),
  );
}

Widget _buttonCheckout(context) {
  return Container(
    width: double.infinity, //que abarque todo el ancho de la pantalla
    height: 45.0,
    margin: EdgeInsets.only(top: 10.0),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0.5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        primary: orange,
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          Container(
            margin: EdgeInsets.only(left: 50.0),
            child: headerText(
                texto: 'Pedir',
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                color: blanco),
          ),
          Container(
            margin: EdgeInsets.only(left: 50.0),
            child: headerText(
                texto: '199 MXN',
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: blanco),
          ),
        ],
      ),
    ),

    /*antes era RaisedButton(
      elevation: 0.5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      color: orange,
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          Container(
            margin: EdgeInsets.only(left: 50.0),
            child: headerText(
                texto: 'Pedir',
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                color: blanco),
          ),
          Container(
            margin: EdgeInsets.only(left: 50.0),
            child: headerText(
                texto: '199 MXN',
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: blanco),
          ),
        ],
      ),
    ),*/
  );
}
