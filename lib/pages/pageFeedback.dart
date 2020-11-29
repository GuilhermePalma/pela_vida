import 'package:flutter/material.dart';
import 'package:pela_vida/pages/components/header.dart';

class FeedbackUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) => headerSecondary("Perfil", _body, context);
}


//TODO Implentar a area de escrita
//TODO Verificar o MainAxisAlignment.spaceBetween
//TODO Implementar ações no botões
_body() {
  return Container(
    color: Colors.white,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Para auxiliar o desenvolvimento futuro de novas atualizações desse projeto, nos ajude escrevendo uma critíca sobre o projeto. Quanto mais detalhes e ideias melhor :))'),

        ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            RaisedButton(color: Colors.black, child: Text('Limpar'), onPressed: (){} ),
            RaisedButton(color: Colors.black, child: Text('Enviar'), onPressed: (){} ),
          ],
        )

      ],
    ),
  );
}
