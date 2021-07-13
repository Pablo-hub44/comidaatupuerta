import 'package:comidaatupuerta/src/colors/colors.dart';
import 'package:comidaatupuerta/src/features/presentation/commons_widgets/Buttons/button_redondeado.dart';
import 'package:flutter/material.dart';

class CuisinesFilter extends StatefulWidget {
  CuisinesFilter({Key key}) : super(key: key);

  @override
  _CuisinesFilterState createState() => _CuisinesFilterState();
}

class _CuisinesFilterState extends State<CuisinesFilter> {
  bool btnAmerican = false;
  bool btnasia = false;
  bool btnsushi = false;
  bool btnpizza = false;

  bool btnDessrts = false;
  bool btnfastfood = false;
  bool btnvietnamese = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, //<->
      children: [
        Wrap(
          //antes mainAxisAlignment: MainAxisAlignment.spaceAround,
          direction: Axis.horizontal,
          alignment: WrapAlignment.start,
          children: [
            _roundedButtonFilter(() {
              setState(() => btnAmerican = !btnAmerican);
            }, btnAmerican, 'American'),
            _roundedButtonFilter(() {
              setState(() => btnasia = !btnasia);
            }, btnasia, 'Asia'),
            _roundedButtonFilter(() {
              setState(() => btnsushi = !btnsushi);
            }, btnsushi, 'Sushi'),
            _roundedButtonFilter(() {
              setState(() => btnpizza = !btnpizza);
            }, btnpizza, 'Pizza'),
            _roundedButtonFilter(() {
              setState(() => btnDessrts = !btnDessrts);
            }, btnDessrts, 'Postres'),
            _roundedButtonFilter(() {
              setState(() => btnfastfood = !btnfastfood);
            }, btnfastfood, 'Comida-rapi'),
            _roundedButtonFilter(() {
              setState(() => btnvietnamese = !btnvietnamese);
            }, btnvietnamese, 'Vietna'),
          ],
        ),
        /*Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          ],
        )*/
      ],
    );
  }
}

Widget _roundedButtonFilter(Function func, bool isActive, String labelText) {
  return Container(
    width: 120.0,
    height: 50.0,
    margin: EdgeInsets.only(left: 5.0),
    child: createButton(
      labelButton: labelText,
      labelButtoncolor: isActive ? orange : gris,
      func: func,
      buttonColor: blanco,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          side: BorderSide(color: isActive ? orange : gris)),
    ),
  );

  /*este no createButton(
    labelButton: labelText,
    labelButtoncolor: isActive ? orange : gris,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
        side: BorderSide(color: isActive ? orange : gris)),
  );*/
  /*antes RaisedButton(
    onPressed: func,
    elevation: 0.5,
    color: Colors.white,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
        side: BorderSide(color: isActive ? orange : gris)),
    child: Text(
      labelText,
      style: TextStyle(color: isActive ? orange : gris),
    ),
  );*/
}
