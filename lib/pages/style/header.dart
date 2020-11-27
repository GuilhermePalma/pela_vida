import 'package:flutter/material.dart';

//Titulo, Nome da função body, tela lateral, context p/ navegação entre as paginas
headerMain(String _title, Function _body, Function _drawer, BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text(_title,
          style: TextStyle(fontSize: 23, color: Colors.black)),
      centerTitle: true,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.home),
          onPressed: () {},
        ),
      ],
    ),
    drawer: _drawer(context),
    body: _body(),
  );
}

//Titulo, Nome da função body, context p/ navegação p/ pagina principal
headerSecondary(String _title, Function _body, BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text(_title, style: TextStyle(fontSize: 23, color: Colors.black)),
      centerTitle: true,
      actions: <Widget>[
        IconButton(
            icon: Icon(Icons.home),
            onPressed: () => Navigator.of(context).pop()),
      ],
    ),
    body: _body(),
  );
}
