import 'package:flutter/material.dart';
import 'package:pela_vida/pages/components/buttons.dart';
import 'package:pela_vida/pages/components/header.dart';
import 'package:pela_vida/pages/style/colorsGlobal.dart';
import 'package:pela_vida/utils/randomPhrases.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) =>
      headerSecondary("Perfil", _body(context), yellow2, context);

  _body(context) {
    //Code
    int counter;

    setState(() {
      counter = lengthPhrases - position.length;
    });

    //Layout
    return Container(
      color: Color(lightBlue),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                counter == 0
                    ? 'Esse perfil não leu nenhuma frases 😔\n'
                    : 'Esse perfil já leu $counter frases 😄\n',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
              buttons("Tela Inicial", () => Navigator.of(context).pop()),
            ],
          ),
        ),
      ),
    );
  }
}
