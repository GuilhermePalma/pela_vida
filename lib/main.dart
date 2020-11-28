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
  String phraseDay="", authorDay="";
  String phrase="", author="";
  bool verificDay = false;

  _body() {

    //Verifica se a frase do dia ja existe usando uma variavel booleana
    if(verificDay == false){
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


    return Container(
      color: Color(cinza3),
      height: double.infinity,
      width: double.infinity,
      //child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _messages("Mensagem do Dia:", phraseDay, authorDay),
          /*Card(
            color: Colors.white60,
            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Column(
              children: <Widget>[
                Text(
                  "Mensagem do Dia:",
                  style: TextStyle(),
                  textAlign: TextAlign.center,

                ),
                Text(
                  phraseDay,
                  style: TextStyle(),
                  textAlign: TextAlign.center,
                ),
                Text(
                  authorDay,
                  style: TextStyle(),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),*/
          Container(
            margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
            width: 210,
            decoration: BoxDecoration(
              color: Colors.white60,
              border: Border.all(
                color: Colors.black,
                width: 3,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(child: Text("Play"), onPressed: () {}),
                RaisedButton(child: Text("Mute"), onPressed: () {}),
                RaisedButton(child: Text("Pause"), onPressed: () {}),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
            width: 320,
            child: Card(
              color: Colors.white60,
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
                  /*Card(
                    color: Colors.white60,
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Container(
                      width: 300,
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Mensagem do Dia:",
                            style: TextStyle(),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            phrase,
                            style: TextStyle(),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            author,
                            style: TextStyle(),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),*/
                ],
              ),
            ),
          ),
        ],
      ),
      //),
    );
  }
}

_messages(String _text1, String _text2, String _text3) {
  return Card(
    color: Colors.white60,
    margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
    child: Container(
      width: 300,
      child: Column(
        children: <Widget>[
          Text(
            _text1,
            style: TextStyle(),
            textAlign: TextAlign.center,
          ),
          Text(
            _text2,
            style: TextStyle(),
            textAlign: TextAlign.center,
          ),
          Text(
            _text3,
            style: TextStyle(),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );
}
