import 'dart:math';
import 'package:pela_vida/utils/storagePhrases.dart';
import 'package:pela_vida/utils/storageAuthor.dart';

int lengthPhrases = 23;
var position = List<int>.generate(lengthPhrases, (int _index) => _index++);
bool positionEmpty = false;

List<String> formatPhrase() {
  String _phrase, _author;
  List<String> finalAuthorPhrase;
  int valueIndex = valueRandom();

  if (valueIndex == 999) {
    _phrase = 'Você já acessou todas as frases';
    finalAuthorPhrase = [
      _phrase,
      '',
    ];
    positionEmpty = true;
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

int valueRandom() {
  var random = new Random();
  int positionRandom, positionValue;

  if (position.isEmpty) {
    return positionValue = 999;
  }

  positionRandom = random.nextInt(
      position.length); //Pega uma posição aleatoria no comprimento da lista

  positionValue =
      position[positionRandom]; //Pega o valor do numero da posição aleatoria

  position.remove(positionValue); //Remove o numero utilizado da Lista

  return positionValue;
}
