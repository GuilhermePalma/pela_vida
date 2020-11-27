import 'package:flutter/material.dart';
import 'package:pela_vida/pages/style/header.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) => headerSecondary("Perfil", _body, context);
}

//TODO Inserir um emoji de verdade
//TODO Cor de Fundo azul ou verde clarinho
//TODO Criar a função para contar quantas frases foram lidas

_body(BuildContext context) {
  return Container(
    color: Colors.white,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Esse perfil já leu: VARIAVEL_QNT frases :)'),

        RaisedButton(child: Text('Retornar...'), onPressed: ()=> Navigator.of(context).pop()),

      ],
    ),
  );
}
