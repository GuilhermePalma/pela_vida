import 'package:flutter/material.dart';
import 'package:pela_vida/pages/pageAboutApp.dart';
import 'package:pela_vida/pages/pageAboutUs.dart';
import 'package:pela_vida/pages/pageProfile.dart';
import 'package:pela_vida/pages/pageSettings.dart';
import 'package:pela_vida/pages/pageTemporary.dart';
import 'package:pela_vida/pages/pageFeedback.dart';
import 'package:pela_vida/pages/style/colorsGlobal.dart';
import 'package:pela_vida/utils/navegation.dart';

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
            color: Color(grey1),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                "assets/images/LogoPelaVida.png"
              ),
            ),
          ),
        ),
        _listaItens(0xeaac, "Perfil", Profile(), context),
        _listaItens(0xe9c6, "Como Funciona", Temporary(), context),
        _listaItens(0xe7db, "Sobre o APP", AboutApp(), context),
        _listaItens(60339, "Sobre Nós", AboutUs(), context),
        _listaItens(0xe5fe, "Feedback", FeedbackUser(), context),
        _listaItens(57520, "Configurações", Settings(), context),
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
