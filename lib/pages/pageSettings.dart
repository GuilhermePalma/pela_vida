import 'package:flutter/material.dart';
import 'package:pela_vida/pages/components/buttons.dart';
import 'package:pela_vida/pages/components/header.dart';
import 'package:pela_vida/pages/components/text.dart';
import 'package:pela_vida/pages/style/colorsGlobal.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      headerSecondary("Configurações", _body(context), yellow2, context);
}

_body(context) {
  return Container(
    color: Color(lightRed),
    height: double.infinity,
    width: double.infinity,
    child: Container(
      width: 320,
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            text(
                '⚠️⚠️⚠️\nPagina ainda em Desenvolvimento, em breve novidades😉.',
                18,
                black),
            buttons("Tela Inicial", () => Navigator.of(context).pop(),
                padding: [0, 10, 0, 0]),
          ]),
    ),
  );
}
