import 'package:comidaatupuerta/src/colors/colors.dart';
import 'package:comidaatupuerta/src/features/presentation/commons_widgets/Buttons/button_redondeado.dart';
import 'package:comidaatupuerta/src/features/presentation/commons_widgets/Headers/header_double.dart';
import 'package:comidaatupuerta/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:comidaatupuerta/src/features/presentation/commons_widgets/backbuttons/back_button.dart';
import 'package:flutter/material.dart';

class PlaceDetailPage extends StatelessWidget {
  //const PlaceDetailPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          backgroundColor: orange,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          label: headerText(
              texto: 'Añadir a la cesta 100MXN',
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 17.0)),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: orange,
            expandedHeight: 312, //antes 395
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Image(
                    width: double.infinity,
                    height: 350,
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1493770348161-369560ae357d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'),
                  ),
                  Container(
                    //para ponerle un fondo oscuro a la imagen
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 1.5),
                    ),
                    width: double.infinity,
                    height: 350,
                  ),
                  Wrap(
                    children: [
                      _promoButton(), //boton superior
                      _infoPlace(), //titutlo,, subtitulo del lugar
                      _infoPlaceStats(), // la info del lugar, rating,favs,photos
                      //_offerBanner(),//boton de ordenar
                      SizedBox(height: 20.0)
                    ],
                  )
                ],
              ),
            ),
            leading: Builder(builder: (BuildContext context) {
              //el boton de regresar
              return backButton(context, Colors.white);
            }),
            actions: [
              //lista de widgets a la derecha superior
              Container(
                margin: EdgeInsets.all(10.0),
                child: Image(
                    width: 22.0,
                    height: 22.0,
                    image: AssetImage('assets/share.png')),
              ),
              IconButton(
                  icon: Icon(
                    Icons.bookmark_border,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  onPressed: () {})
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              _headers(texto: 'Platos Populares'),
              _sliderCards(),
              _headers(texto: 'Menu completo'),
              _menuList(context),
              _headers(texto: 'Reviews'),
              _review(),
              _headers(texto: 'Tus comentarios'), //ratings
              _yourrating(),
              SizedBox(height: 110.0)
            ]),
          )
        ],
      ),
    );
  }
}

//los widgets
Widget _promoButton() {
  return Container(
    margin: EdgeInsets.only(top: 121.0, left: 28.0, right: 15.0),
    width: double.infinity,
    height: 25.0,
    /*child: Row(
      children: [
        createButton(
          buttonColor: orange,
          labelButton: 'Tiendas libres',
          labelFontSize: 12.0,
        )

        /*RaisedButton(
          elevation: 0.5,
          onPressed: () {},
          shape: StadiumBorder(),
          child: headerText(
              texto: 'Tiendas libres', color: Colors.white, fontSize: 13.0),
          color: orange,
        )*/
      ],
    ),*/
  );
}

Widget _infoPlace() {
  return Column(
    children: [
      Container(
        padding: EdgeInsets.only(
            left: 30.0, right: 30.0), //horizontal no me gusta <->
        margin: EdgeInsets.symmetric(vertical: 7.0),
        child: headerText(
            texto: 'Boon Lay Ho Hust Fried Prawn Noodle',
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30.0),
      ),
      Container(
        padding: EdgeInsets.only(
            left: 30.0, right: 30.0), //horizontal no me gusta <->

        child: Row(
          children: [
            Icon(Icons.location_on, color: gris),
            headerText(
                texto: 'San Javier Manors APT. 177',
                color: gris,
                fontWeight: FontWeight.w600,
                fontSize: 16.0),
          ],
        ),
      )
    ],
  );
} /*funcion de widget */

Widget _infoPlaceStats() {
  return Container(
    margin: EdgeInsets.only(top: 25.0),
    padding: EdgeInsets.symmetric(horizontal: 40.0),
    height: 70.0,
    decoration: BoxDecoration(
      border: Border(
        top: BorderSide(color: Colors.white),
        bottom: BorderSide(color: Colors.white),
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween, //<->
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center, //arriba,abajo
          crossAxisAlignment: CrossAxisAlignment.start, //<->
          children: [
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.white,
                  size: 19.0,
                ),
                headerText(
                    texto: ' 4.5',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0)
              ],
            ),
            headerText(
                texto: '351 Ratings',
                color: gris,
                fontWeight: FontWeight.w500,
                fontSize: 15.0)
          ],
        ),
        Container(
          height: 40.0,
          decoration: BoxDecoration(
              border: Border(right: BorderSide(color: Colors.white))),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center, //arriba,abajo
          crossAxisAlignment: CrossAxisAlignment.start, //<->
          children: [
            Row(
              children: [
                Icon(
                  Icons.bookmark,
                  color: Colors.white,
                  size: 19.0,
                ),
                headerText(
                    texto: ' 137K',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0)
              ],
            ),
            headerText(
                texto: 'Favoritos',
                color: gris,
                fontWeight: FontWeight.w500,
                fontSize: 15.0)
          ],
        ),
        Container(
          height: 40.0, //la linea
          decoration: BoxDecoration(
              border: Border(right: BorderSide(color: Colors.white))),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center, //arriba,abajo
          crossAxisAlignment: CrossAxisAlignment.start, //<->
          children: [
            Row(
              children: [
                Icon(
                  Icons.photo,
                  color: Colors.white,
                  size: 19.0,
                ),
                headerText(
                    texto: ' 343',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0)
              ],
            ),
            headerText(
                texto: 'Photos',
                color: gris,
                fontWeight: FontWeight.w500,
                fontSize: 15.0)
          ],
        ),
      ],
    ),
  );
}

Widget _offerBanner() {
  return Container(
    color: Color.fromRGBO(255, 237, 214, 1.0), //naranjita pastel
    padding: EdgeInsets.all(20.0),
    height: 90.0,
    child: Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start, //<->
          children: [
            headerText(
                texto: 'Nuevo! Consiguelo',
                color: orange,
                fontWeight: FontWeight.bold,
                fontSize: 15.0),
            headerText(
                texto: 'Consiguelo. Tu orden esta \n lista cuando quieras',
                color: primaryColor,
                fontWeight: FontWeight.w500,
                fontSize: 13.0)
          ],
        ),
        Spacer(),
        createButton(
          labelButton: 'Ordena ahora',
          labelFontSize: 13.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          buttonColor: orange,
        )

        /*RaisedButton(
          elevation: 0.5,
          onPressed: () {},
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          child: headerText(
              texto: 'Ordena ahora',
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 13.0),
          color: orange,
        )*/
      ],
    ),
  );
}

Widget _headers({texto: String}) {
  return Container(
    margin: EdgeInsets.only(top: 20.0, bottom: 5.0),
    padding: EdgeInsets.symmetric(horizontal: 20.0),
    /*<-> */
    child: headerDoubleText(textHeader: texto, textAction: ''),
  );
}

Widget _sliderCards() {
  return Container(
    padding: EdgeInsets.only(left: 10.0),
    height: 210.0,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return _cards();
        }),
  );
}

Widget _cards() {
  return Container(
    margin: EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: Image(
            width: 200.0,
            height: 100.0,
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://images.unsplash.com/photo-1485704686097-ed47f7263ca4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=769&q=80'),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10.0),
          child: headerText(
              texto: 'Peanut Cheat with Dani',
              fontWeight: FontWeight.bold,
              fontSize: 16.0),
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: headerText(
              texto: '100 MXN',
              fontWeight: FontWeight.w600,
              fontSize: 15.0,
              color: gris),
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: headerText(
                  texto: "Selecciona",
                  fontWeight: FontWeight.w600,
                  fontSize: 14.0,
                  color: orange),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 85.0),
              child: Image(
                width: 20.0,
                height: 20.0,
                fit: BoxFit.cover,
                image: AssetImage('assets/plus_order.png'),
                color: orange,
              ),
            )
          ],
        )
      ],
    ),
  );
}

Widget _menuList(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(left: 10.0),
    child: Column(
      children: [
        _menuItem(context, 'Ensaladas', '2'),
        _menuItem(context, 'Pollos', '5'),
        _menuItem(context, 'Sopas', '6'),
        _menuItem(context, 'Vegetales', '7'),
      ],
    ),
  );
}

Widget _menuItem(BuildContext context, String texto, String itemCount) {
  return Container(
    decoration: BoxDecoration(
      //las rayitas separadoras
      border: Border(bottom: BorderSide(color: gris)),
    ),
    child: Column(
      children: [
        ListTile(
          //el title esta ala izquierda
          title: headerText(
            texto: texto,
            fontWeight: FontWeight.w300,
            fontSize: 17.0,
          ),
          //es el que esta a la derecha
          trailing: headerText(
            texto: itemCount,
            fontWeight: FontWeight.w300,
            fontSize: 17.0,
          ),
        ),
        _sliderCards(),
      ],
    ),
  );
}

Widget _review() {
  return Container(
    height: 148.0,
    padding: EdgeInsets.only(left: 10.0),
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return _cardsReviews();
        }),
  );
}

Widget _cardsReviews() {
  var lorem =
      "Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates voluptatibus non voluptas nesciunt? Quia, exercitationem ut!";

  return Container(
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
    width: 350.0,
    child: Column(
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image(
                width: 49.0,
                height: 43.0,
                fit: BoxFit.cover,
                image: NetworkImage(//el avatar del usuario jaja
                    'https://images.unsplash.com/photo-1615993409504-57f481efa1cb?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, //<->
                children: [
                  headerText(
                      texto: 'Mike Smithson',
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0),
                  headerText(
                      texto: '45 Reviews',
                      fontWeight: FontWeight.w600,
                      fontSize: 14.0)
                ],
              ),
            ),
            Spacer(),
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Container(
                  width: 50.0,
                  height: 30.0,
                  color: orange,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      headerText(
                          texto: '4',
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0),
                      Icon(Icons.star, color: Colors.white, size: 14.0)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 10.0),
          //el titulo
          child: headerText(
              texto: lorem,
              color: gris,
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              textAlign: TextAlign.left),
        ),
        Container(
          margin: EdgeInsets.only(top: 15.0),
          //el titulo
          child: headerText(
            texto: 'Ver la review completa',
            color: orange,
            fontSize: 15.0,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    ),
  );
}

Widget _yourrating() {
  //tus comentarios
  return Container(
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(left: 10.0, right: 10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //por lo mientras 5 containers
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Container(
                  width: 60.0,
                  height: 30.0,
                  color: orangepastel,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      headerText(
                          texto: '1',
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0),
                      Icon(Icons.star, color: Colors.white, size: 14.0)
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Container(
                  width: 60.0,
                  height: 30.0,
                  color: orangepastel,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      headerText(
                          texto: '2',
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0),
                      Icon(Icons.star, color: Colors.white, size: 14.0)
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Container(
                  width: 60.0,
                  height: 30.0,
                  color: orangepastel,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      headerText(
                          texto: '3',
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0),
                      Icon(Icons.star, color: Colors.white, size: 14.0)
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Container(
                  width: 60.0,
                  height: 30.0,
                  color: orange,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      headerText(
                          texto: '4',
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0),
                      Icon(Icons.star, color: Colors.white, size: 14.0)
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Container(
                  width: 60.0,
                  height: 30.0,
                  color: orangepastel,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      headerText(
                          texto: '5',
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0),
                      Icon(Icons.star, color: Colors.white, size: 14.0)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 15.0, left: 20.0),
          child: headerText(
            texto:
                'Amariamos oir mas sobre tus experiencias. muy buena la comida',
            color: gris,
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
            textAlign: TextAlign.left,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10.0, left: 20.0),
          child: headerText(
            texto: '+ Edita tus opiniones',
            color: orange,
            fontSize: 12.0,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    ),
  );
}
