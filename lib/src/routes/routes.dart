import 'package:comidaatupuerta/src/features/presentation/bienvenida_page/View/bienvenida_page.dart';
import 'package:comidaatupuerta/src/features/presentation/buscar_page/View/buscarView.dart';
import 'package:comidaatupuerta/src/features/presentation/collection_detail_page/View/collection_detalle_page.dart';
import 'package:comidaatupuerta/src/features/presentation/collection_page/View/collections_page.dart';
import 'package:comidaatupuerta/src/features/presentation/filter_page/view/filter_page.dart';
import 'package:comidaatupuerta/src/features/presentation/login_page/View/login_page.dart';
import 'package:comidaatupuerta/src/features/presentation/lugares_detail_page/View/place_detail_page.dart';
import 'package:comidaatupuerta/src/features/presentation/olvide_contrase%C3%B1a/View/olvide_contrase%C3%B1a.dart';
import 'package:comidaatupuerta/src/features/presentation/profile_detail_page/View/profile_detail_page.dart';
import 'package:comidaatupuerta/src/features/presentation/registro_page/View/registro_page.dart';
import 'package:comidaatupuerta/src/features/presentation/tabs/tabs_page.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
//paginas

final routes = <String, WidgetBuilder>{
  'Bienvenida': (BuildContext context) => BienvenidaPage(),
  'Login': (BuildContext context) => LoginPage(),
  'forgot-password': (BuildContext context) => ForgotPassword(),
  'registro': (BuildContext context) => RegistroPage(),
  'tabs': (BuildContext context) => TabsPage(),
  'search': (BuildContext context) => BuscarPage(),
  'filter': (BuildContext context) => FilterPage(),
  'collections': (BuildContext context) => CollectionsPage(),
  'collections-details': (BuildContext context) => ColeccionesDetallesPage(),
  'place-detail': (BuildContext context) => PlaceDetailPage(),
  'perfil-detail': (BuildContext context) => PerfilDetailPage(),
};
