import 'package:flutter/material.dart';
import 'package:pela_vida/utils/randomPhrases.dart';
import 'package:pela_vida/pages/style/colorsGlobal.dart';
import 'package:pela_vida/pages/components/drawer.dart';
import 'package:pela_vida/pages/components/header.dart';
import 'package:pela_vida/pages/components/text.dart';
import 'package:pela_vida/pages/components/buttons.dart';


//TODO Implementar a musica
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pela Vida',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) =>
      headerMain("Pela Vida", _body(), lateralMenu, yellow3, context);

  List<String> storagePhrase = [];
  String phraseDay = "", authorDay = "";
  String phrase = "", author = "";
  bool checkDay = false;

  _body() {
    //Programação

    //Gera a frase do Mensagem do Dia
    _newDay() {
      storagePhrase = formatPhrase();
      setState(() {
        phraseDay = storagePhrase[0];
        authorDay = storagePhrase[1];
      });
      checkDay = true;
    }

    //Gera uma nova Frase e atualiza na tela
    generationNewPhrase() {
      storagePhrase = formatPhrase();
      setState(() {
        phrase = storagePhrase[0];
        author = storagePhrase[1];
      });
    }

    //Verifica se a frase do dia ja existe usando uma variavel booleana
    if (checkDay == false) {
      _newDay();
    }

    //Limpa a Tela
    _cleanScreen() {
      setState(() {
        phrase = '';
        author = '';
      });
    }

    //Reinicia as Frases
    _resetPhrases() {
      if (positionEmpty) {
        position = List<int>.generate(lengthPhrases, (int _index) => _index++);
        _cleanScreen();
      } else {
        position.clear();
        position = List<int>.generate(lengthPhrases, (int _index) => _index++);
        _cleanScreen();
      }
    }

    //Layout
    return Container(
      color: Color(grey2),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                width: 320,
                decoration: _roundBorder(offWhite, 5),
                child: ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: <Widget>[
                    buttons("Testar Novo Dia", () => _newDay(), false),
                    buttons("Reiniciar Frases", () => _resetPhrases(), false),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                width: 320,
                decoration: _roundBorder(offWhite, 5),
                child: _messages("Mensagem do Dia:", phraseDay, authorDay),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                width: 320,
                decoration: _roundBorder(offWhite, 5),
                child: Column(
                  children: <Widget>[
                    buttons(
                        "Sortear Frase", () => generationNewPhrase(), true),
                    _messages("Frases Sorteadas:", phrase, author),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

_messages(String _title, String _text1, String _text2) {
  return Container(
    width: 300,
    margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
    decoration: _roundBorder(grey3, 5),
    child: Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(0, 8, 0, 5),
          child: text(_title, 25, yellow2, fontWeight: 6),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
          child: text(_text1 == "" ? "" : '"$_text1"', 22, white,fontWeight: 3),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            padding: EdgeInsets.fromLTRB(5, 0, 10, 8),
            child: text(_text2 == "" ? "" : '-$_text2', 18, black),
          ),
        ),
      ],
    ),
  );
}

_roundBorder(int _color, double _radius) {
  return BoxDecoration(
    color: Color(_color),
    borderRadius: BorderRadius.circular(_radius),
  );
}

