import 'package:comidaatupuerta/src/colors/colors.dart';
//import 'package:comidaatupuerta/src/features/presentation/commons_widgets/Buttons/button_redondeado.dart';
import 'package:comidaatupuerta/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:comidaatupuerta/src/features/presentation/commons_widgets/backbuttons/back_button.dart';
import 'package:comidaatupuerta/src/features/presentation/profile_detail_page/View/components/avatar_view.dart';
import 'package:comidaatupuerta/src/features/presentation/profile_detail_page/View/components/textfields_view.dart';
import 'package:comidaatupuerta/src/utils/styles/box_decorations_shadows.dart';
import 'package:flutter/material.dart';
//extensiones
import 'package:comidaatupuerta/src/utils/Extensions/screen_size.dart';

class PerfilDetailPage extends StatefulWidget {
  PerfilDetailPage({Key? key}) : super(key: key);

  @override
  _PerfilDetailPageState createState() => _PerfilDetailPageState();
}

class _PerfilDetailPageState extends State<PerfilDetailPage> {
  @override
  Widget build(BuildContext context) {
    //antes double screenWidth = MediaQuery.of(context).size.width;
    //movido a screen_size double screenWidth;

    //antes double screenHeight = MediaQuery.of(context).size.height * 0.6;
    //movido a screen_size double screenHeight;
    //yo quiero el 60% de la pantalla

    return Scaffold(
      backgroundColor: bggreyPage,
      appBar: AppBar(
        title: headerText(texto: 'Editar perfil', fontSize: 18.0),
        backgroundColor: blanco,
        elevation: 0.4,
        leading: Builder(builder: (BuildContext context) {
          return backButton(context, Colors.black);
        }), //lo que va a la izquierda del appbar
        actions: [
          //es lista de widget que van a la derecha del appbar
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.only(top: 20.0, right: 15.0),
              child: headerText(
                texto: 'Echo',
                color: orange,
                fontWeight: FontWeight.w500,
                fontSize: 17.0,
              ),
            ),
          )
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              margin: EdgeInsets.only(
                  top: getScreenHeight(context: context, multiplier: 0.1),
                  left: 15.0,
                  right: 15.0),
              //no va esto color: Colors.red,
              decoration: createBoxDecorationWithShadow(),
              width: getScreenWidth(context: context),
              height: getScreenHeight(
                  context: context,
                  multiplier:
                      0.66), //el context siempre se tiene que poner, 0.65 es el tamaño
              child: Column(
                children: [
                  Transform.translate(
                    offset: Offset(0, -60),
                    child: AvatarView(
                        backgroundImage:
                            'https://images.unsplash.com/photo-1623944890676-9d5d57a6f7e9?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=751&q=80'),
                  ),
                  TextFieldPerfilDetailView(),
                ],
              ),
            ),
          ]))
        ],
      ),
    );
  }
}
