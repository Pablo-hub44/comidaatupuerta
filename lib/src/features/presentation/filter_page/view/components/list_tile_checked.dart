import 'package:comidaatupuerta/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:flutter/material.dart';
//colores
import 'package:comidaatupuerta/src/colors/colors.dart';

@immutable
class ListBuscarpor extends StatefulWidget {
  final String texto;
  final bool isActive;
  final Function func;

  ListBuscarpor({Key key, this.texto, this.isActive, this.func})
      : super(key: key);

  @override
  _ListBuscarporState createState() => _ListBuscarporState();
}

class _ListBuscarporState extends State<ListBuscarpor> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        listTiles(
          context: context,
          texto: widget.texto,
          isActive: widget.isActive,
          func: widget.func,
        )
      ], //'Top Rated'
    );
  }
}

Widget listTiles(
    {BuildContext context, texto: String, isActive: bool, Function func}) {
  return Container(
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(color: Theme.of(context).dividerColor),
      ),
    ),
    child: ListTile(
      onTap: func,
      title: headerText(
          texto: texto,
          color: isActive ? orange : Colors.black,
          fontWeight: FontWeight.w300,
          fontSize: 17.0),
      trailing: isActive
          ? Icon(
              Icons.check,
              color: isActive ? orange : gris,
            )
          : Text(''),
    ),
  );
}
