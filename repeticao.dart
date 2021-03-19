import 'dart:io';

main(){

  print("===== Qual frase você quer repetir? =====");
  var frase = stdin.readLineSync();
  var fraseString = frase.toString();

  print("===== Quantas vezes eu devo repetir essa frase? =====");
  var vezes = stdin.readLineSync();
  var vezesString = vezes.toString();
  var vezesInt = int.parse(vezesString);

  repetir(fraseString,vezesInt);
}

// Repete a frase dada pelo usuário, n vezes.
repetir(x,y){
  for(int i = 1; i < y+1; i++){
    print("#$i:");
    print(x);
  }
}