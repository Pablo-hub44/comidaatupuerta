import 'package:comidaatupuerta/src/colors/colors.dart';
import 'package:comidaatupuerta/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:flutter/material.dart';

class PerfilTab extends StatefulWidget {
  PerfilTab({Key? key}) : super(key: key);

  @override
  _PerfilTabState createState() => _PerfilTabState();
}

class _PerfilTabState extends State<PerfilTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            GestureDetector(
                onTap: () => Navigator.pushNamed(context, 'perfil-detail'),
                child: _header()),
            _contentProfile(),
          ],
        ));
  }
}

Widget _header() {
  return Container(
    height: 240.0,
    color: bggreyPage,
    padding: EdgeInsets.only(left: 50.0, right: 40.0, top: 40.0),
    child: Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1474447976065-67d23accb1e3?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8cHJvZmlsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
          radius: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center, //arriba-abajo
          crossAxisAlignment: CrossAxisAlignment.start, //<->
          children: [
            Container(
              margin: EdgeInsets.only(left: 15.0),
              child: Row(
                children: [
                  headerText(
                      texto: 'Pablo Osinaga',
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.chevron_right,
                        color: gris,
                      ))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15.0),
              height: 25.0,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: rosa,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                ),
                child: Row(
                  children: [
                    Image(
                      image: AssetImage('assets/crown.png'),
                      width: 16.0,
                      height: 16.0,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5.0),
                      child: headerText(
                          texto: 'Membresia VIP',
                          color: blanco,
                          fontSize: 12.0),
                    ),
                  ],
                ),
              ),

              /*antes era RaisedButton(
                onPressed: () {},
                color: rosa,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                child: Row(
                  children: [
                    Image(
                      image: AssetImage('assets/crown.png'),
                      width: 16.0,
                      height: 16.0,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5.0),
                      child: headerText(
                          texto: 'Membresia VIP',
                          color: blanco,
                          fontSize: 12.0),
                    ),
                  ],
                ),
              ), */
            ),
          ],
        )
      ],
    ),
  );
}

Widget _contentProfile() {
  return Container(
    padding: EdgeInsets.all(10.0),
    child: Column(
      children: [
        ListTile(
          leading: Image(
            image: AssetImage('assets/noti.png'),
            width: 29.0,
            height: 29.0,
          ),
          title:
              headerText(texto: 'Notificaciones', fontWeight: FontWeight.w400),
          trailing: Icon(
            Icons.chevron_right,
            color: gris,
          ), //va a la derecha
        ),
        ListTile(
          leading: Image(
            image: AssetImage('assets/payicon.png'),
            width: 29.0,
            height: 29.0,
          ),
          title:
              headerText(texto: 'Metodos de Pago', fontWeight: FontWeight.w400),
          trailing: Icon(
            Icons.chevron_right,
            color: gris,
          ), //va a la derecha
        ),
        ListTile(
          leading: Image(
            image: AssetImage('assets/rewardicon.png'),
            width: 29.0,
            height: 29.0,
          ),
          title: headerText(texto: 'Historial', fontWeight: FontWeight.w400),
          trailing: Icon(
            Icons.chevron_right,
            color: gris,
          ), //va a la derecha
        ),
        ListTile(
          leading: Image(
            image: AssetImage('assets/promoicon.png'),
            width: 29.0,
            height: 29.0,
          ),
          title: headerText(
              texto: 'Codigos promocionales', fontWeight: FontWeight.w400),
          trailing: Icon(
            Icons.chevron_right,
            color: gris,
          ), //va a la derecha
        ),
        SizedBox(height: 20.0),
        ListTile(
          leading: Image(
            image: AssetImage('assets/settingicon.png'),
            width: 29.0,
            height: 29.0,
          ),
          title:
              headerText(texto: 'Configuracion', fontWeight: FontWeight.w400),
          trailing: Icon(
            Icons.chevron_right,
            color: gris,
          ), //va a la derecha
        ),
        ListTile(
          leading: Image(
            image: AssetImage('assets/inviteicon.png'),
            width: 29.0,
            height: 29.0,
          ),
          title:
              headerText(texto: 'Invitar amigos', fontWeight: FontWeight.w400),
          trailing: Icon(
            Icons.chevron_right,
            color: gris,
          ), //va a la derecha
        ),
        ListTile(
          leading: Image(
            image: AssetImage('assets/helpicon.png'),
            width: 29.0,
            height: 29.0,
          ),
          title: headerText(texto: 'Ayuda', fontWeight: FontWeight.w400),
          trailing: Icon(
            Icons.chevron_right,
            color: gris,
          ), //va a la derecha
        ),
        ListTile(
          leading: Image(
            image: AssetImage('assets/abouticon.png'),
            width: 29.0,
            height: 29.0,
          ),
          title: headerText(
              texto: 'Acerca de nosotros', fontWeight: FontWeight.w400),
          trailing: Icon(
            Icons.chevron_right,
            color: gris,
          ), //va a la derecha
        )
      ],
    ),
  );
}
