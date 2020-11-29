import 'package:flutter/material.dart';
import 'package:pela_vida/pages/components/header.dart';
import 'package:pela_vida/pages/style/colorsGlobal.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      headerSecondary("Sobre Nós", _body(), yellow2, context);
}

//TODO Finalizar os textos
_body() {
  return Container(
    color: Colors.white,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
            'Durante o Projeto foi divididas as responsabilidades para o seu desenvolvimento'),
        Text('Area Artistica'),
        Text('Programacao'),
        Text('Dados'),
        Text('Textos'),
      ],
    ),
  );
}
