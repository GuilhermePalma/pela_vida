import 'package:flutter/material.dart';
import 'package:pela_vida/pages/components/header.dart';
import 'package:pela_vida/pages/components/text.dart';
import 'package:pela_vida/pages/style/colorsGlobal.dart';
import 'package:pela_vida/pages/style/sizedBox.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      headerSecondary("Sobre Nós", _body(), yellow2, context);
}

_body() {
  return Container(
    color: Color(lightRed),
    height: double.infinity,
    child: SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
      child: Center(
        child: Column(
          children: <Widget>[
            Container(
              width: 320,
              child: Column(
                children: <Widget>[
                  text(
                      'Os Criadores do Projetos são: Guilherme Peres Lins da Palma, Isabella Regina de Lima, Alef de Souza Rocha e Laissa Rafaela Almeida',
                      18,
                      black,
                      fontWeight: 6),
                ],
              ),
            ),
            lineSizedBox(black),
            Container(
              width: 320,
              child: Column(
                children: <Widget>[
                  text(
                      'Cada um teve a sua contribuição durante a criação do Projeto, sendo divididos em partes, como Programação, Frases, Design, Ideias e Objetivos e outros',
                      18,
                      black),
                ],
              ),
            ),
            lineSizedBox(black),
            Container(
              width: 320,
              child: Column(
                children: <Widget>[
                  text(
                      '⚠️⚠️⚠️\nPagina ainda em Desenvolvimento, em breve novidades😉.',
                      18,
                      black),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
