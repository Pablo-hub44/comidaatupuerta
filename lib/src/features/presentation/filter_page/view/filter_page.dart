import 'package:comidaatupuerta/src/features/presentation/filter_page/view/components/list_tile_checked.dart';
import 'package:comidaatupuerta/src/features/presentation/filter_page/view/components/price_filter.dart';
import 'package:flutter/material.dart';
//colors
import 'package:comidaatupuerta/src/colors/colors.dart';
//commons_widgets
import 'package:comidaatupuerta/src/features/presentation/commons_widgets/Headers/header_text.dart';
//customs widgets
import 'package:comidaatupuerta/src/features/presentation/filter_page/view/components/cuisines_filters.dart';

class FilterPage extends StatefulWidget {
  FilterPage({Key? key}) : super(key: key);

  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  //sort by booleans
  bool mejorValorado = false; //top rated
  bool cercademi = false;
  bool costAltoabajo = false;
  bool costBajoaalto = false;
  bool masPopular = false;

  //sort by booleans
  bool abiertoAhora = false; //opennow
  bool tarjetaCredito = false;
  bool alcoholServed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 15.0, bottom: 15.0, left: 15.0),
                child: headerText(
                    texto: 'CUISINES',
                    color: gris,
                    fontWeight: FontWeight.w600,
                    fontSize: 17.0),
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: CuisinesFilter()),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 15.0),
                child: headerText(
                    texto: 'BUSCAR POR',
                    color: gris,
                    fontWeight: FontWeight.w600,
                    fontSize: 17.0),
              ),
              _sortByContainer(),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 15.0),
                child: headerText(
                    texto: 'Filtrar por',
                    color: gris,
                    fontWeight: FontWeight.w600,
                    fontSize: 17.0),
              ),
              _filterContainer(),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 15.0),
                child: headerText(
                    texto: 'Precio',
                    color: gris,
                    fontWeight: FontWeight.w600,
                    fontSize: 17.0),
              ),
              PriceFilter(),
            ]),
          )
        ],
      ),
    );
  }

  Widget _sortByContainer() {
    //buscar por
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
          ListBuscarpor(
            texto: 'Top Rated',
            isActive: mejorValorado,
            func: () {
              setState(() => mejorValorado = !mejorValorado);
            },
          ),
          ListBuscarpor(
            texto: 'Cerca de mi',
            isActive: cercademi,
            func: () {
              setState(() => cercademi = !cercademi);
            },
          ),
          ListBuscarpor(
            texto: 'Mayor a menor costo',
            isActive: costAltoabajo,
            func: () {
              setState(() => costAltoabajo = !costAltoabajo);
            },
          ),
          ListBuscarpor(
            texto: 'Menor a mayor costo',
            isActive: costBajoaalto,
            func: () {
              setState(() => costBajoaalto = !costBajoaalto);
            },
          ),
          ListBuscarpor(
            texto: 'Mas populares',
            isActive: masPopular,
            func: () {
              setState(() => masPopular = !masPopular);
            },
          ),
        ],
      ),
    );
  }

  Widget _filterContainer() {
    //buscar por
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
          ListBuscarpor(
            texto: 'Abierto Ahora',
            isActive: abiertoAhora,
            func: () {
              setState(() => abiertoAhora = !abiertoAhora);
            },
          ),
          ListBuscarpor(
            texto: 'Tarjetas de credito',
            isActive: tarjetaCredito,
            func: () {
              setState(() => tarjetaCredito = !tarjetaCredito);
            },
          ),
          ListBuscarpor(
            texto: 'Tienda de alcohol',
            isActive: alcoholServed,
            func: () {
              setState(() => alcoholServed = !alcoholServed);
            },
          ),
        ],
      ),
    );
  }
}

PreferredSizeWidget? _appBar(BuildContext context) {
  return AppBar(
    elevation: 0.8,
    backgroundColor: Colors.white,
    title: headerText(
      texto: 'Filtros',
      fontWeight: FontWeight.w600,
    ),
    centerTitle: true, //centrar el titulo
    leading: Container(
      padding: EdgeInsets.only(top: 20.0, left: 9.0),
      child: headerText(
          texto: 'Quitar', fontWeight: FontWeight.w500, fontSize: 17.0),
    ),
    actions: [
      GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          padding: EdgeInsets.only(top: 20.0, right: 10.0),
          child: headerText(
              texto: 'Hecho',
              color: orange,
              fontWeight: FontWeight.w500,
              fontSize: 17.0),
        ),
      ),
    ],
  );
}
