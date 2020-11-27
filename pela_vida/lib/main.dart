import 'package:flutter/material.dart';
import 'package:pela_vida/pages/style/drawer.dart';
import 'package:pela_vida/pages/style/header.dart';
import 'utils/randomPhrases.dart';

//TODO Arrumar as areas das Mensagens
//TODO Implementar um arquivo de aleatorização
//TODO Colocar uma função nos botões
//TODO Implementar a musica
//TODO Remover codigo comentado


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pela Vida',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
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
      headerMain("Pela Vida", _body, lateralMenu, context);
}

_body() {

List<String> storagePhrase=[];
  String phrase = "", author = "";

  if(phrase.isEmpty && author.isEmpty) {
    storagePhrase = formatPhrase();
  }

  phrase = storagePhrase[0];
  author = storagePhrase[1];


  return Container(
    color: Colors.black87,
    height: double.infinity,
    width: double.infinity,
    //child: SingleChildScrollView(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        /*TODO Remover esse codigo, ele era modelo
        Container(
          padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
          child: Card(
            child: Text(
                "MENSAGENS AQUI !!!!\n*************************************************" +
                    "\n*\n*\n*\n*\n*\n*", textAlign: TextAlign.center,),
          ),
        ),*/

        Card(
          color: Colors.white60,
          margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
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
        Card(
          color: Colors.white60,
          margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
          child: Column(
            children: <Widget>[
              RaisedButton(child: Text("Sortear Frase"), onPressed: () {}),
              Card(
                child: Text(
                  "MENSAGENS AQUI !!!!\n*************************************************" +
                      "\n*\n*\n*\n*\n*\n*",
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
    //),
  );
}
