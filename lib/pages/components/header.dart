import 'package:flutter/material.dart';
import 'package:pela_vida/pages/components/text.dart';
import 'package:pela_vida/pages/style/colorsGlobal.dart';

//Titulo, Nome da função body, tela lateral, context p/ navegação entre as paginas
headerMain(String _title, Widget _body, Function _drawer, int _color,
    BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Color(_color),
      title: text(_title, 30, white, fontWeight: 5),
      centerTitle: true,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.home),
          onPressed: () {},
        ),
      ],
    ),
    drawer: _drawer(context),
    body: _body,
  );
}

//Titulo, Nome da função body, context p/ navegação p/ pagina principal
headerSecondary(String _title, Widget _body, int _color, BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Color(_color),
      title: text(_title, 23, white),
      centerTitle: true,
      actions: <Widget>[
        IconButton(
            icon: Icon(Icons.home),
            onPressed: () => Navigator.of(context).pop()
        ),
      ],
    ),
    body: _body,
  );
}
