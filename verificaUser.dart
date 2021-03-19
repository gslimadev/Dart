import 'dart:io';

main(){
  var user = stdin.readLineSync();
  verificaUser(user);
}

// Verifica o usuário 
verificaUser(name){
  if ( name == "Guilherme" ){
    print("Bem vindo Guilherme");
  }
  else{
    print("Intruso!");
  }
}