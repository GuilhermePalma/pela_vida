//TODO Versão utilizada no dartpad, mas em constante ateração, com possiveis erros antigos.

import 'package:flutter/material.dart';
import 'dart:math';


//TODO main.dart
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

  _body() {

    List<String> storagePhrase = [];
    String phrase = "", author = "";

    if (phrase.isEmpty && author.isEmpty) {
      storagePhrase = formatPhrase();
    }

    phrase = storagePhrase[0];
    author = storagePhrase[1];

    generationNewPhrase() {
      setState(() {
        storagePhrase = formatPhrase();
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
          Card(
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
                  Card(
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
                  ),
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







//------------------------------------------------------------------------//





//TODO header
//Titulo, Nome da função body, tela lateral, context p/ navegação entre as paginas
headerMain(String _title, Function _body, Function _drawer,int _color, BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Color(_color),
      title: Text(_title,
          style: TextStyle(fontSize: 23, color: Colors.white)),
      centerTitle: true,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.home),
          onPressed: () {},
        ),
      ],
    ),
    drawer: _drawer(context),
    body: _body(),
  );
}

//Titulo, Nome da função body, context p/ navegação p/ pagina principal
headerSecondary(String _title, Function _body, BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text(_title, style: TextStyle(fontSize: 23, color: Colors.black)),
      centerTitle: true,
      actions: <Widget>[
        IconButton(
            icon: Icon(Icons.home),
            onPressed: () => Navigator.of(context).pop()),
      ],
    ),
    body: _body(),
  );
}





//------------------------------------------------------------------------//





//TODO drawer
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




//------------------------------------------------------------------------//




//TODO navegation.dart
//Usado Para navegar entre as paginas
Future navegation(Widget _page, BuildContext context) {
  return Navigator.push(
    context,
    MaterialPageRoute(
      builder: (BuildContext context) => _page)
  );
}




//------------------------------------------------------------------------//




//TODO pageTemp
//TODO Retirar esse codigo e reformatar: menuLateral
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






//------------------------------------------------------------------------//





//TODO randomPhrases.dart
int _lengthPhrases = 5;
var _position = List<int>.generate(_lengthPhrases, (int index) => index++);

List<String> formatPhrase(){

  String _phrase, _author;
  List<String> finalAuthorPhrase;
  int valueIndex = valueRandom();

  List<String> listPhrase = [
      ("Oi0"),
      ("Oi1"),
      ("Oi2"),
      ("Oi3"),
      ("Oi4"),
  ];

  List<String> listAuthor = [
      ("T0"),
      ("T1"),
      ("T2"),
      ("T3"),
      ("T4"),
  ];


  if(valueIndex == 999){
    _phrase = 'Você já acessou todas as frases';
    finalAuthorPhrase = [
      _phrase,
      '',
    ];
    return finalAuthorPhrase;
  }

  //Pega a frase usando o valor do numero da lista
  _phrase = listPhrase[valueIndex];
  _author = listAuthor[valueIndex];

  finalAuthorPhrase = [
      _phrase,
      _author,
  ];

  return finalAuthorPhrase;

}


int valueRandom(){

  var random = new Random();
  int positionRandom, positionValue;

  if(_position.isEmpty){
    return positionValue = 999;
  }

  positionRandom = random.nextInt(_position.length); //Pega uma posição aleatoria no comprimento da lista

  positionValue = _position[positionRandom]; //Pega o valor do numero da posição aleatoria

  _position.remove(positionValue); //Remove o numero utilizado da Lista

  return positionValue;

}





//------------------------------------------------------------------------//





//TODO colorsGlobal.dart
//Cores Usadas no app

int amarelo1 = 0xffFFED00 ;
int amarelo2 = 0xffFFDD00 ;
int amarelo3 = 0xffFDC300 ;
int amarelo4 = 0xffF8A800 ;

int cinza1 = 0xffD1D0D1 ;
int cinza2 = 0xffB0AEAA ;
int cinza3 = 0xff82807C ;
int cinza4 = 0xff3A3A3A ;

