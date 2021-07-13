//import 'dart:html';

import 'package:comidaatupuerta/src/colors/colors.dart';
import 'package:comidaatupuerta/src/features/presentation/commons_widgets/Cards/favoritos_card.dart';
import 'package:comidaatupuerta/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:comidaatupuerta/src/features/presentation/commons_widgets/backbuttons/back_button.dart';

import 'package:flutter/material.dart';

class ColeccionesDetallesPage extends StatelessWidget {
  //const ColeccionesDetallesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            //title: Text('Asia'),
            expandedHeight: 225.0,
            backgroundColor: orange, //Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              //title: headerText(),nel se ve feo
              background: Stack(
                children: [
                  Image(
                    width: double.infinity,
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1519624213695-6819a985fb0b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'),
                  ),
                  Container(
                    //para ponerle un fondo oscuro a la imagen
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(0, 0, 0, 1.3),
                        borderRadius: BorderRadius.circular(10.0)),
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Center(
                    child: headerText(
                        texto: 'Asia \n Restaurante',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0,
                        textAlign: TextAlign.center),
                  )
                ],
              ),
            ),
            leading: Builder(builder: (BuildContext context) {
              return backButton(context, Colors.white);
            }),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.symmetric(vertical: 20.0),
                      child: headerText(
                          texto: '128 Lugares',
                          color: Color.fromRGBO(51, 58, 77, 1.0),
                          fontWeight: FontWeight.w700,
                          fontSize: 18.0),
                    ),
                    Column(
                      children: [
                        favoritosCard(
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1414235077428-338989a2e8c0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                            title: "Andy & Cindy's Diner",
                            subtitle: "87 Botsford Circle Apt",
                            review: "4.8",
                            rating: " (233 ratings)",
                            buttonText: 'Delivery',
                            hasActionButton: true,
                            isFavorito: true),
                        favoritosCard(
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1414235077428-338989a2e8c0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                            title: "Andy & Cindy's Diner",
                            subtitle: "87 Botsford Circle Apt",
                            review: "4.8",
                            rating: " (233 ratings)",
                            buttonText: 'Delivery',
                            hasActionButton: true,
                            isFavorito: false),
                        favoritosCard(
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1414235077428-338989a2e8c0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                            title: "Andy & Cindy's Diner",
                            subtitle: "87 Botsford Circle Apt",
                            review: "4.8",
                            rating: " (233 ratings)",
                            buttonText: 'Delivery',
                            hasActionButton: true,
                            isFavorito: false),
                        favoritosCard(
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1414235077428-338989a2e8c0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                            title: "Andy & Cindy's Diner",
                            subtitle: "87 Botsford Circle Apt",
                            review: "4.8",
                            rating: " (233 ratings)",
                            buttonText: 'Delivery',
                            hasActionButton: true,
                            isFavorito: false),
                      ],
                    )
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
