import 'package:flutter/material.dart';
import 'package:pela_vida/pages/components/header.dart';
import 'package:pela_vida/pages/style/colorsGlobal.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      headerSecondary("Configurações", _body(), yellow2, context);
}

//TODO Verificar se o botão de retornar está funcionando
//TODO Inserir icons de manutenção na pagina (no meio ou no inicio)
//TODO Colocar um vermelho ou laranja pastel de fundo

_body() {
  return Container(
    color: Colors.white,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Pagina e Funções em Desenvolvimento...'),
        Text('Agurdem, Novidades em Breve....'),
      ],
    ),
  );
}
