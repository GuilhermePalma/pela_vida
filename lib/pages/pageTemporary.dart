import 'package:flutter/material.dart';
import 'package:pela_vida/pages/style/header.dart';

//TODO Descontinuar esse codigo
//TODO Necessario arrumar no menuLateral.dart

class Temporary extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      headerSecondary("Pagina Temporaria", _bodyTemp, context);
}

_bodyTemp() {
  return Center(
    child: Container(
      color: Colors.white38,
      child: Text("Pagina Temporaria", style: TextStyle(color: Colors.black),),
    ),
  );
}
