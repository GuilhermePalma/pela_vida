import 'package:flutter/material.dart';

//Usado Para navegar entre as paginas
Future navegation(Widget _page, BuildContext context) {
  return Navigator.push(
    context,
    MaterialPageRoute(
      builder: (BuildContext context) => _page)
  );
}
