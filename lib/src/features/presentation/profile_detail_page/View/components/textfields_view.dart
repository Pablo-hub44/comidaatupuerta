//import 'package:comidaatupuerta/src/colors/colors.dart';
import 'package:comidaatupuerta/src/utils/Extensions/screen_size.dart';
import 'package:flutter/material.dart';

class TextFieldPerfilDetailView extends StatelessWidget {
  //const TextFieldPerfilDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _createTextFieldusername(context),
          _createTextFieldemail(context),
          _createTextFieldphone(context),
          _createTextFieldbirthday(context),
          _createTextFieldDeliveryAddress(context),
        ],
      ),
    );
  }
}

//metodos           _ = significa privado
Widget _createTextFieldusername(BuildContext context) {
  return Container(
    //antes screenHeight.getScreenWidth
    width: getScreenWidth(context: context, multiplier: 0.85),
    decoration: BoxDecoration(
        border:
            Border(bottom: BorderSide(color: Theme.of(context).dividerColor))),
    child: ListTile(
      title: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            hintText: 'Nombre',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    ),
  );
}

Widget _createTextFieldemail(BuildContext context) {
  return Container(
    //antes screenHeight.getScreenWidth
    width: getScreenWidth(context: context, multiplier: 0.85),
    decoration: BoxDecoration(
        border:
            Border(bottom: BorderSide(color: Theme.of(context).dividerColor))),
    child: ListTile(
      title: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'Email',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    ),
  );
}

Widget _createTextFieldphone(BuildContext context) {
  return Container(
    //antes screenHeight.getScreenWidth
    width: getScreenWidth(context: context, multiplier: 0.85),
    decoration: BoxDecoration(
        border:
            Border(bottom: BorderSide(color: Theme.of(context).dividerColor))),
    child: ListTile(
      title: TextField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
            hintText: 'Telefono',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    ),
  );
}

Widget _createTextFieldbirthday(BuildContext context) {
  return Container(
    //antes screenHeight.getScreenWidth
    width: getScreenWidth(context: context, multiplier: 0.85),
    decoration: BoxDecoration(
        border:
            Border(bottom: BorderSide(color: Theme.of(context).dividerColor))),
    child: ListTile(
      title: TextField(
        keyboardType: TextInputType.datetime,
        decoration: InputDecoration(
            hintText: 'Fecha de cumpleaños',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    ),
  );
}

Widget _createTextFieldDeliveryAddress(BuildContext context) {
  return Container(
    //antes screenHeight.getScreenWidth
    width: getScreenWidth(context: context, multiplier: 0.85),
    decoration: BoxDecoration(
        border:
            Border(bottom: BorderSide(color: Theme.of(context).dividerColor))),
    child: ListTile(
      title: TextField(
        keyboardType: TextInputType.text,
        maxLines: 3,
        decoration: InputDecoration(
            hintText: 'Direccion de entrega',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    ),
  );
}
