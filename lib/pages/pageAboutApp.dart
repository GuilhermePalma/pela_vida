import 'package:flutter/material.dart';
import 'package:pela_vida/pages/style/header.dart';

class AboutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => headerSecondary("Sobre o APP", _body, context);
}
//TODO Finalizar os textos
_body() {
  return Container(
    color: Colors.white,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Objetivos: '),
        Text('Missão: '),
        Text('Esse Projeto foi desenvolvido para uma tarefa do curso de Desenvolvimento da escola "Etec Anna de Paula Ferraz" para colocar em pratica a criação de Layouts e das funcionalidades do Dart e Flutter'),
        Text('EM DESENVOLVIMENTO: Todos os dados utilizado no Projeto foram armazenados de forma local, sem nehuma conexao com banco de dados'),
        Text('Os Criadores do Projetos são: Alèf de Souza Rocha, Isabela Regina de Lima, Laissa Almeida e Guilherme Palma'),
        Text('Cada um teve a sua contribuição durante a criação do Projeto, sendo divididos em partes, como Design, Frases, Programação, Ideias e Objetivos e outros'),
        Text('Tecnologias Utilizadas: Flutter, '),
        Text('As decisões que foram tomadas: '),

      ],
    ),
  );
}
