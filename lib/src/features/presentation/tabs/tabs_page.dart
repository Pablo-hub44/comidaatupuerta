import 'package:comidaatupuerta/src/colors/colors.dart';
import 'package:comidaatupuerta/src/features/presentation/commons_widgets/Alertas/alert_dialog.dart';
import 'package:comidaatupuerta/src/features/presentation/commons_widgets/Buttons/button_redondeado.dart';
import 'package:comidaatupuerta/src/features/presentation/tabs/favorito_tab.dart';
import 'package:comidaatupuerta/src/features/presentation/tabs/perfil_tab.dart';
import 'package:flutter/material.dart';
//tabs
import 'package:comidaatupuerta/src/features/presentation/tabs/explorar_tab.dart';
import 'package:comidaatupuerta/src/features/presentation/tabs/my_order_tab/miorden_tab.dart';

class TabsPage extends StatefulWidget {
  TabsPage({Key? key}) : super(key: key);

  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      _pedirLocation(context);
    });
  }

  List<Widget> _widgetOptions = [
    ExplorarTab(), //0
    MiordenTab(), //1
    FavoritoTab(), //2
    PerfilTab(), //3
  ];

  int _selectedItemIndex = 0;

  void _cambiarWidget(int index) {
    setState(() {
      _selectedItemIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedItemIndex),
      bottomNavigationBar: _bottomNavigator(context),
    );
  }

  Widget _bottomNavigator(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 30.0,
      selectedItemColor: orange, //antes Theme.of(context).accentColor,
      unselectedItemColor: Colors.grey,
      currentIndex: _selectedItemIndex,
      onTap: _cambiarWidget,
      showUnselectedLabels: true,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explorar'),
        BottomNavigationBarItem(
            icon: Icon(Icons.assignment), label: 'Mi orden'),
        BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Favoritos'),
        BottomNavigationBarItem(icon: Icon(Icons.person_pin), label: 'Perfil'),
      ],
    );
  }

  Future _pedirLocation(BuildContext context) async {
    mostrarAlertaDialog(
        //quite el await mostrarAlertaDialog{ al principio
        context,
        AssetImage('assets/location.png'),
        'Habilita tu localización',
        "permite usar tu ubicación para mostrar el restaurante cercano en el mapa",
        //_hechobutton(context, "Habilita tu localización") sin el roundedButton
        createButton(
            context: context,
            buttonColor: orange,
            labelButton: "Habilita tu localización",
            //shape : shape,
            func: () {}));
  }

  /*Widget _hechobutton(BuildContext context, String labelButton) { sin el rounded 
    return Container(
      //container hecho
      width: 370.0,
      height: 45.0,
      margin: EdgeInsets.only(top: 40.0),
      child: RaisedButton(
        onPressed: () {
          print("Habilitar geolocalización");
        },
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        color: Theme.of(context).accentColor,
        child: Text(labelButton,
            style: TextStyle(color: Colors.white, fontSize: 20.0)),
      ),
    );
  }*/
}
