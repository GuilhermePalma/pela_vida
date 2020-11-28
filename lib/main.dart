import 'package:flutter/material.dart';
import 'package:pela_vida/pages/style/colorsGlobal.dart';
import 'package:pela_vida/pages/style/drawer.dart';
import 'package:pela_vida/pages/style/header.dart';
import 'utils/randomPhrases.dart';

//TODO Arrumar as areas das Mensagens
//TODO Implementar um arquivo de aleatorização
//TODO Colocar uma função nos botões
//TODO Implementar a musica
//TODO Remover codigo comentados

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
      headerMain("Pela Vida", _body, lateralMenu, amarelo3, context);

  List<String> storagePhrase = [];
  String phraseDay = "", authorDay = "";
  String phrase = "", author = "";
  bool verificDay = false;

  _body() {
    //Programação
    //Verifica se a frase do dia ja existe usando uma variavel booleana
    if (verificDay == false) {
      storagePhrase = formatPhrase();
      phraseDay = storagePhrase[0];
      authorDay = storagePhrase[1];
      verificDay = true;
    }

    //Gera uma nova frase e atualiza na tela
    generationNewPhrase() {
      storagePhrase = formatPhrase();

      setState(() {
        phrase = storagePhrase[0];
        author = storagePhrase[1];
      });
    }

    //Layout
    return Container(
      color: Color(cinza2),
      height: double.infinity,
      width: double.infinity,
      //child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[


          Container(
            margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
            width: 320,
            decoration: BoxDecoration(
              color: Colors.white60,
              borderRadius: BorderRadius.circular(5),
            ),
            child: _messages("Mensagem do Dia:", phraseDay, authorDay),
          ),




          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
            width: 320,
            decoration: BoxDecoration(
              color: Colors.white60,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                  child: RaisedButton(
                      child: Text("Sortear Frase"),
                      onPressed: () {
                        generationNewPhrase();
                      }),
                ),
                _messages("Frases Sorteadas:", phrase, author),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
            width: 320,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                  child: RaisedButton(
                      color: Color(cinza1),
                      child: Text(
                        "Sortear Frase",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      onPressed: () {
                        generationNewPhrase();
                      }),
                ),
                _messages("Frases Sorteadas:", phrase, author),
              ],
            ),
          ),

        ],
      ),
      //),
    );
  }
}

_messages(String _title, String _text1, String _text2) {
  return Card(
    color: Color(cinza3),
    margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
    child: Container(
      width: 300,
      child: Column(
        children: <Widget>[
          Text(
            _title,
            style: TextStyle(
                fontSize: 20,
                color: Color(amarelo2),
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text(
            _text1 == "" ? "" : '"$_text1"',
            style: TextStyle(
              fontSize: 17,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              _text2 == "" ? "" : '-$_text2  ',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
