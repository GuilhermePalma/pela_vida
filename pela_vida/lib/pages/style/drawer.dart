import 'package:flutter/material.dart';
import 'package:pela_vida/pages/pageTemporary.dart';
import 'package:pela_vida/utils/navegation.dart';

//TODO Colocar as paginas corretas
//TODO Inserir a imagem correta

lateralMenu(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[

        DrawerHeader(
          child: Text(
            'Pela vida',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          decoration: BoxDecoration(
            color: Colors.green,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                //TODO Colocar uma imagem certa
                  "https://s1.static.brasilescola.uol.com.br/be/conteudo/images/a-tecnica-pomodoro-um-metodo-gestao-tempo-5b4e0f6051f44.jpg"
              ),
            ),
          ),
        ),
        _listaItens(0xeaac, "Perfil", Temporary(), context),
        _listaItens(0xe9c6, "Como Funciona", Temporary(), context),
        _listaItens(0xe7db, "Sobre o APP", Temporary(), context),
        _listaItens(60339, "Sobre Nós", Temporary(), context),
        _listaItens(0xe5fe, "Feedback", Temporary(), context),
        _listaItens(57520, "Configurações", Temporary(), context),
      ],
    ),
  );
}

//Codigo do Icone, Texto da Label, Pagina de Destino, context p/ navegação
_listaItens(int _icon, String _text, Widget _page, BuildContext context) {
  return ListTile(
    leading: Icon(IconData(_icon, fontFamily: 'MaterialIcons')),
    title: Text(_text),
    onTap: () {
      Navigator.of(context).pop();
      navegation(_page, context);
    },
  );
}
