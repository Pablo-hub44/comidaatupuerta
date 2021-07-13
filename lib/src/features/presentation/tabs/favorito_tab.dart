import 'package:comidaatupuerta/src/colors/colors.dart';
import 'package:comidaatupuerta/src/features/presentation/commons_widgets/Cards/favoritos_card.dart';
import 'package:comidaatupuerta/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:flutter/material.dart';

class FavoritoTab extends StatefulWidget {
  FavoritoTab({Key key}) : super(key: key);

  @override
  _FavoritoTabState createState() => _FavoritoTabState();
}

class _FavoritoTabState extends State<FavoritoTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bggreyPage,
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              centerTitle: true,
              leading: Text(''), //lo que va a la izquierda
              backgroundColor: blanco,
              title: headerText(
                  texto: 'Mis favoritos',
                  color: primaryColor,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w600),
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child: Column(
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
                  ],
                ),
              )
            ]))
          ],
        ));
  }
}
