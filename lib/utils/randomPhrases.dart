import 'dart:math';

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
