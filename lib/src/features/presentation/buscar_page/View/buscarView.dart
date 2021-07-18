import 'package:comidaatupuerta/src/colors/colors.dart';
import 'package:comidaatupuerta/src/features/presentation/commons_widgets/Cards/card_vertical.dart';
import 'package:comidaatupuerta/src/features/presentation/commons_widgets/Headers/header_double.dart';
import 'package:comidaatupuerta/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:comidaatupuerta/src/features/presentation/commons_widgets/Cards/populares_card.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_swiper/flutter_swiper.dart';

class BuscarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: Icon(Icons.close, color: Colors.black, size: 40.0),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 20.0),
                        alignment: Alignment.centerLeft,
                        child:
                            /*headerText(
                            'Buscar', Colors.black, FontWeight.bold, 30.0)*/
                            headerText(
                                texto: 'Buscar',
                                color: Colors.black,
                                fontSize: 30.0)),
                    _searchInput(context),
                    SizedBox(height: 40.0),
                    headerDoubleText(
                        textHeader: 'Busqueda reciente',
                        textAction: 'Limpiar todo'),
                    SizedBox(height: 10.0),
                    _sliderRecentsearch(),
                    SizedBox(height: 20.0),
                    headerDoubleText(
                        textHeader: 'Recomendado para ti', textAction: ''),
                    SizedBox(height: 20.0),
                    popularesCard(
                      context: context,
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1414235077428-338989a2e8c0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                      title: "Andy & Cindy's Diner",
                      subtitle: "87 Botsford Circle Apt",
                      review: "4.8",
                      rating: "233 ratings",
                      hasActionButton: false,
                    ),
                    popularesCard(
                      context: context,
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1414235077428-338989a2e8c0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                      title: "Andy & Cindy's Diner",
                      subtitle: "87 Botsford Circle Apt",
                      review: "4.8",
                      rating: "233 ratings",
                      hasActionButton: false,
                    ),
                    popularesCard(
                      context: context,
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1414235077428-338989a2e8c0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                      title: "Andy & Cindy's Diner",
                      subtitle: "87 Botsford Circle Apt",
                      review: "4.8",
                      rating: "233 ratings",
                      hasActionButton: false,
                    ),
                  ],
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}

Widget _searchInput(BuildContext context) {
  return Container(
    height: 40.0,
    margin: EdgeInsets.only(top: 20.0),
    padding: EdgeInsets.only(left: 5.0),
    decoration: BoxDecoration(
        color: Color.fromRGBO(142, 142, 147, 1.2),
        borderRadius: BorderRadius.circular(20.0)),
    child: TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(top: 5.0),
        prefixIcon: Icon(Icons.search, color: gris),
        hintText: 'Buscar',
        border: OutlineInputBorder(borderSide: BorderSide.none),
      ),
    ),
  );
}

Widget _sliderRecentsearch() {
  return Container(
    margin: EdgeInsets.only(top: 5.0),
    height: 190.0,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return cardVertical(
            context: context,
            width: 160.0,
            height: 120.0,
            title: "Andy & Cindys Diner",
            subtitle: "87 Botsford circle Apt",
            image: NetworkImage(
                'https://images.unsplash.com/photo-1493770348161-369560ae357d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=8'));
      },
    ),
  );
}
