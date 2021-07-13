import 'package:comidaatupuerta/src/colors/colors.dart';
import 'package:flutter/material.dart';

class PriceFilter extends StatefulWidget {
  //PriceFilter({Key key}) : super(key: key);

  @override
  _PriceFilterState createState() => _PriceFilterState();
}

//properties
RangeValues _values = const RangeValues(40, 80); //(start,end))
// ignore: unused_element
int _minPrice = 0;
// ignore: unused_element
int _maxPrice = 0;

class _PriceFilterState extends State<PriceFilter> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        /*Text(
          '$_minPrice MXN',
          style: TextStyle(fontSize: 11.0),
          textAlign: TextAlign.center,
        ),*/
        Container(
          margin: EdgeInsets.only(top: 5.0, bottom: 11.0),
          width: 350,
          child: RangeSlider(
            activeColor: orange,
            inactiveColor: gris,
            values: _values,
            min: 0,
            max: 300.0,
            divisions: 6,
            /*onChanged: (RangeValues newValue) { asi era antes
              setState(() {
                _values = newValue;
                _minPrice = _values.start.round();
                _maxPrice = _values.end.round();
              });
            },*/
            labels: RangeLabels(
              _values.start.round().toString(),
              _values.end.round().toString(),
            ),
            onChanged: (RangeValues newValue) {
              setState(() {
                _values = newValue;
                _minPrice = _values.start.round();
                _maxPrice = _values.end.round();
              });
            },
          ),
        ),
        /*Text(
          '$_maxPrice MXN',
          style: TextStyle(fontSize: 11.0),
          textAlign: TextAlign.center,
        )*/
      ],
    );
  }
}
