import 'package:flutter/material.dart';
import 'package:pela_vida/pages/components/header.dart';


class Temporary extends StatelessWidget {
  int yellow2;

  @override
  Widget build(BuildContext context) =>
      headerSecondary("Pagina Temporaria", _bodyTemp(), yellow2, context);
}

_bodyTemp() {
  return Center(
    child: Container(
      color: Colors.white38,
      child: Text(
        "Pagina Temporaria",
        style: TextStyle(color: Colors.black),
      ),
    ),
  );
}
