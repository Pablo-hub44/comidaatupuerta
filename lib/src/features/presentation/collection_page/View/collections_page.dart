import 'package:flutter/material.dart';
//commons widget
import 'package:comidaatupuerta/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:comidaatupuerta/src/features/presentation/commons_widgets/backbuttons/back_button.dart';

class CollectionsPage extends StatelessWidget {
  //const CollectionsPage({Key key}) : super(key: key);

  //@overide
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            title: headerText(
              texto: 'Colleciones',
              fontSize: 17.0,
            ),
            leading: Builder(builder: (BuildContext context) {
              return backButton(context, Colors.black);
            }),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 25.0, right: 25.0),
            sliver: SliverGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              children: [
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _card(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, 'collections-details');
    },
    child: Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            width: 165.0,
            height: 190.0,
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://images.unsplash.com/photo-1615993409504-57f481efa1cb?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'),
          ),
        ),
        Container(
          //la sombra
          width: 165.0,
          height: 190.0,
          decoration: BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 1.3),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(right: 1, bottom: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              headerText(
                  texto: 'Asia',
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold),
              headerText(
                  texto: '128 lugares',
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400),
            ],
          ),
        )
      ],
    ),
  );
}
