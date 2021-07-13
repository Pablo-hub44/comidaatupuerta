import 'package:comidaatupuerta/src/features/presentation/commons_widgets/Buttons/button_redondeado.dart';
import 'package:comidaatupuerta/src/features/presentation/commons_widgets/Cards/populares_card.dart';
import 'package:flutter/material.dart';
//colores
import 'package:comidaatupuerta/src/colors/colors.dart';
//commond widgets
import 'package:comidaatupuerta/src/features/presentation/commons_widgets/Headers/header_text.dart';
//servicios
import 'package:flutter/services.dart';
//swiper
import 'package:flutter_swiper/flutter_swiper.dart';

class ExplorarTab extends StatelessWidget {
  const ExplorarTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.black));
    /*return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(),
      ),
    );*/
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverList(
                delegate: SliverChildListDelegate([
              Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  child: Column(
                    children: [
                      _topBar(context),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20.0),
                        alignment: Alignment.centerLeft,
                        child:
                            /*headerText('Descubre nuevos lugares',
                            Colors.black, FontWeight.bold, 30.0),*/
                            headerText(
                                texto: 'Descubre nuevos lugares',
                                color: Colors.black,
                                fontSize: 30.0),
                      ),
                      _sliderCards(),
                      _headers(
                          context, "Populares esta semana", "Mostrar todo"),
                      popularesCard(
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1414235077428-338989a2e8c0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                        title: "Andy & Cindy's Diner",
                        subtitle: "87 Botsford Circle Apt",
                        review: "4.8",
                        rating: "233 ratings",
                        buttonText: 'Delivery',
                        hasActionButton: true,
                      ),
                      popularesCard(
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1414235077428-338989a2e8c0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                        title: "Andy & Cindy's Diner",
                        subtitle: "87 Botsford Circle Apt",
                        review: "4.8",
                        rating: "233 ratings",
                        buttonText: 'Delivery',
                        hasActionButton: true,
                      ),
                      popularesCard(
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1414235077428-338989a2e8c0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                        title: "Andy & Cindy's Diner",
                        subtitle: "87 Botsford Circle Apt",
                        review: "4.8",
                        rating: "233 ratings",
                        buttonText: 'Delivery',
                        hasActionButton: true,
                      ),
                      /*_populares(context,
                          'https://images.unsplash.com/photo-1414235077428-338989a2e8c0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                      _populares(context,
                          'https://images.unsplash.com/photo-1499186024912-c374ac2e9cb2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                      _populares(context,
                          'https://images.unsplash.com/photo-1529417305485-480f579e7578?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),*/
                      SizedBox(height: 10.0),
                      GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'collections');
                          },
                          child:
                              _headers(context, "Colección", "Mostrar todo")),
                      _sliderCollection()
                    ],
                  ))
            ])),
          ],
        ),
      ),
    );
  }
}

Widget _topBar(BuildContext context) {
  return Row(
    children: [
      GestureDetector(
        onTap: () =>
            //o en ves de {} es =>
            Navigator.pushNamed(context, 'search'),
        child: Container(
          width: 310.0,
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.only(left: 7.0, top: 5.0),
          decoration: BoxDecoration(
            border: Border.all(color: Color.fromRGBO(234, 236, 239, 1.0)),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Row(
            children: [
              Icon(Icons.search, size: 20.0, color: gris),
              Container(
                margin: EdgeInsets.only(left: 5.0),
                child: Text(
                  'Buscar',
                  style: TextStyle(
                    color: gris,
                    fontSize: 17.0,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      Container(
        width: 45.0,
        height: 45.0,
        margin: EdgeInsets.only(left: 10.0, top: 5.0),
        decoration: BoxDecoration(
          color: Color.fromRGBO(209, 209, 214, 1.0),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: IconButton(
          icon: Icon(
            Icons.filter_list,
            size: 30,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pushNamed(context, 'filter');
          },
        ),
      ),
    ],
  );
}

Widget _sliderCards() {
  return Container(
    height: 350.0,
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return _tarjeta(context);
          },
        );
      },
    ),
  );
}

Widget _tarjeta(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, 'place-detail');
    },
    child: Container(
      margin: EdgeInsets.all(5.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image(
              width: 200.0,
              height: 250.0,
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: Text("Andy & Cindy`s Diner",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0)),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("87 Botsford Circle Apt",
                    style: TextStyle(
                        color: gris,
                        fontWeight: FontWeight.w600,
                        fontSize: 13.0)),
              ),
              Row(
                children: [
                  Icon(Icons.star, color: amarillo, size: 16.0),
                  Text("4.8",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 13.0,
                      )),
                  Text("(233 ratings)",
                      style: TextStyle(
                          color: gris,
                          fontWeight: FontWeight.w600,
                          fontSize: 13.0)),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    width: 80.0,
                    height: 18.0,
                    child: createButton(
                        buttonColor: orange,
                        labelButton: 'Delivery',
                        labelFontSize: 11.0),
                    /*antes RaisedButton(
                        elevation: 0.5,
                        shape: StadiumBorder(),
                        color: orange, //antes Theme.of(context).accentColor,
                        textColor: Colors.white,
                        onPressed: () {},
                        child:
                            Text('Delivery', style: TextStyle(fontSize: 11.0))),*/
                  ),
                ],
              )
            ],
          )
        ],
      ),
    ),
  );
}

Widget _headers(BuildContext context, String textoHeader, String textoAction) {
  return Row(
    children: [
      Container(
        alignment: Alignment.centerLeft,
        child: /*headerText(textoHeader, Colors.black, FontWeight.bold, 20.0),*/
            headerText(texto: textoHeader, color: Colors.black, fontSize: 20.0),
      ),
      Spacer(),
      GestureDetector(
        child: Row(
          children: [
            Text(
              textoAction,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 15.0),
            ),
            Icon(Icons.play_arrow),
          ],
        ),
      ),
    ],
  );
}

/*Widget _populares(BuildContext context, String foto) { movido
  return Column(
    children: [
      GestureDetector(
        onTap: (){
        Navigator.pushNamed(context, 'place-detail');
      },
      child: Container(
        margin: EdgeInsets.only(left: 10.0),
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image(
                width: 80.0,
                height: 80.0,
                fit: BoxFit.cover,
                image: NetworkImage(foto),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 7.0),
                    child:
                        /*headerText("Andy & Cindy Company", Colors.black,
                        FontWeight.bold, 17.0),la version anterior*/
                        headerText(
                            texto: "Andy & Cindy Company",
                            color: Colors.black,
                            fontSize: 17.0),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(bottom: 5.0),
                    child: Text("87 Botsford Circle Apt",
                        style: TextStyle(
                            color: gris,
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0)),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: amarillo, size: 16.0),
                      Text("4.5",
                          style: TextStyle(
                              color: gris,
                              fontWeight: FontWeight.bold,
                              fontSize: 13.0)),
                      Container(
                        margin: EdgeInsets.only(left: 6.0),
                        child: Text("230 rating",
                            style: TextStyle(
                                color: gris,
                                fontWeight: FontWeight.w500,
                                fontSize: 13.0)),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 36.0),
                        width: 110.0,
                        height: 18.0,
                        child: RaisedButton(
                          elevation: 0.5,
                          shape: StadiumBorder(),
                          color: orange, //antes Theme.of(context).accentColor,
                          onPressed: () {},
                          child: Text(
                            "Entrega",
                            style:
                                TextStyle(fontSize: 11.0, color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        ),
      ),
    ],
  );
}*/

Widget _sliderCollection() {
  return Container(
    height: 185.0,
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return _tarjetaColeccion(context);
            });
      },
    ),
  );
}

/*Widget explorePageWidget(BuildContext context) { version diferente, aca es explorar_tab
  return SafeArea(
    child: ,
  );
}*/

Widget _tarjetaColeccion(BuildContext context) {
  return Container(
    margin: EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image(
            width: 300.0,
            height: 150.0,
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://images.unsplash.com/photo-1581546104493-f7e013a136ba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
          ),
        ),
      ],
    ),
  );
}
