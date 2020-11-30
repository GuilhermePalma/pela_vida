import 'package:flutter/material.dart';
import 'package:pela_vida/pages/components/header.dart';
import 'package:pela_vida/pages/components/text.dart';
import 'package:pela_vida/pages/style/colorsGlobal.dart';
import 'package:pela_vida/pages/style/roundBorder.dart';
import 'package:pela_vida/pages/style/sizedBox.dart';

class AboutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      headerSecondary("Sobre o APP", _body(), yellow2, context);
}

_body() {
  return Container(
    color: Color(offWhite),
    child: SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
      child: Center(
        child: Column(
          children: <Widget>[
            Container(
              width: 320,
              decoration: roundBorder(lightRed, 5),
              child: Column(
                children: <Widget>[
                  text(
                      'Os 2 primeiros botões da tela inicial estão la para realizar:',
                      18,
                      black,
                      fontWeight: 6),
                  text(
                      '"Testar Novo Dia" simula como se tivesse passado 1 dia, onde a pessoa iria receber novas mensagens. Sua função é somente demonstrar a função e a intenção é retira-lo nas novas atualizações',
                      18,
                      black),
                  text(
                      '"Reiniciar Frases" é responsavel por reiniciar a lista das frases e ver novamente as frases que ja foram sorteadas',
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
                  text('Objetivos: ', 20, black, fontWeight: 6),
                  text(
                      '-Promover ao Usuario diariamente uma nova Frase de apoio Emocional ou/e Motivacional',
                      18,
                      black),
                  text(
                      '-Disponibilizar frases aleatorias para o Usuario ler em qualquer momento',
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
                  text('Missão: ', 20, black, fontWeight: 6),
                  text('-Auxiliar pessoas por meio das frases', 18, black),
                  text('-Mostra que é necessario falar sobre saúde mental', 18,
                      black),
                ],
              ),
            ),
            lineSizedBox(black),
            Container(
              width: 320,
              child: Column(
                children: <Widget>[
                  text('Tecnologias Utilizadas:', 20, black, fontWeight: 6),
                  text(
                    '-Dart',
                    20,
                    black,
                  ),
                  text('-Flutter', 20, black),
                ],
              ),
            ),
            lineSizedBox(black),
            Container(
              width: 320,
              child: Column(
                children: <Widget>[
                  text('As decisões que foram tomadas:', 20, black,
                      fontWeight: 6),
                  text('-Como tornar as frases aleatorias', 18, black),
                  text(
                      '-Como alterar a Frase Sorteada sem alterar a Frase do dia',
                      18,
                      black),
                  text('-Quantas e quais seriam as telas', 18, black),
                  text('-E varias outras....', 18, black),
                ],
              ),
            ),
            lineSizedBox(black),
            Container(
              width: 320,
              child: Column(
                children: <Widget>[
                  text(
                      'Esse Projeto foi desenvolvido para uma tarefa do curso de Desenvolvimento da escola "Etec Anna de Paula Ferraz" para colocar em pratica a criação de Layouts e das funcionalidades do Dart e Flutter',
                      18,
                      black,
                      fontWeight: 5),
                ],
              ),
            ),
            lineSizedBox(black),
            Container(
              width: 320,
              child: Column(
                children: <Widget>[
                  text(
                      'EM DESENVOLVIMENTO: Todos os dados utilizado no Projeto foram armazenados de forma local, sem nehuma conexao com banco de dados',
                      18,
                      black,
                      fontWeight: 6),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
