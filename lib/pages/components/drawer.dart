import 'package:flutter/material.dart';
import 'package:pela_vida/pages/components/text.dart';
import 'package:pela_vida/pages/pageAboutApp.dart';
import 'package:pela_vida/pages/pageAboutUs.dart';
import 'package:pela_vida/pages/pageProfile.dart';
import 'package:pela_vida/pages/pageSettings.dart';
import 'package:pela_vida/pages/style/colorsGlobal.dart';
import 'package:pela_vida/utils/navegation.dart';

lateralMenu(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Align(
            alignment: Alignment.bottomLeft,
            child: text('Pela Vida', 26, offWhite, fontWeight: 4),
          ),
          decoration: BoxDecoration(
            color: Color(grey4),
            image: DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage("assets/images/LogoPelaVida.png"),
            ),
          ),
        ),
        _listaItens(Icons.person, "Perfil", Profile(), context),
        _listaItens(Icons.border_color, "Sobre o APP", AboutApp(), context),
        _listaItens(Icons.group, "Sobre Nós", AboutUs(), context),
        _listaItens(Icons.settings, "Configurações", Settings(), context),
      ],
    ),
  );
}

//Codigo do Icone, Texto da Label, Pagina de Destino, context p/ navegação
_listaItens(var icon, String _text, Widget _page, BuildContext context) {
  return ListTile(
    leading: Icon(icon),
    title: Text(_text),
    onTap: () {
      Navigator.of(context).pop();
      navegation(_page, context);
    },
  );
}
