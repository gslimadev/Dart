import 'dart:io';

main(){
  var num = stdin.readLineSync();
  var numString = num.toString();
  var intNum = int.parse(numString);
  verificaIdade(intNum);
}

// Verifica maioridade
verificaIdade(age){
  if ( age >= 18){
    print("maior de idade");
  }
  else{
    print("menor de idade");
  }
}