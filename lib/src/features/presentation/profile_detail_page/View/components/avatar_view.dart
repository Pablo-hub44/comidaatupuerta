import 'package:comidaatupuerta/src/colors/colors.dart';
import 'package:comidaatupuerta/src/utils/styles/box_decorations_shadows.dart';
import 'package:flutter/material.dart';

@immutable
class AvatarView extends StatelessWidget {
  //const AvatarView({Key key}) : super(key: key);

  AvatarView({@required this.backgroundImage});
  final String backgroundImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end, //<->
      children: [
        Container(
          width: 142.0,
          height: 142.0,
          decoration: createBoxDecorationWithShadow(
            borderRadius: BorderRadius.circular(65.0),
          ),
          child: CircleAvatar(
            backgroundImage: NetworkImage(backgroundImage),
          ),
        ),
        Transform.translate(
          offset: Offset(0, -35),
          child: Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
                color: rosa, borderRadius: BorderRadius.circular(20.0)),
            child: Icon(
              Icons.camera_alt,
              color: blanco,
              size: 20.0,
            ),
          ),
        )
      ],
    );
  }
}
