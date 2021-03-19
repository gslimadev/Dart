import 'dart:io';

List<Map<String,dynamic>> cadastros = [];
bool condicao = true;

main(){

  print("Bem-vindo ao Super Cadastro, seu programa de cadastro de usuários!");
  print("Digite CADASTRAR, IMPRIMIR ou SAIR para executar as funções do programa");

  
  while (condicao){
    
    var text = (stdin.readLineSync().toString()).toLowerCase();

    if(text == "sair"){
    sair();
    } else if (text == "imprimir"){
    imprimir();
    } else if (text == "cadastrar"){
    cadastrar();
    } else {
      print("Esse comando não existe");
    }
  }
}
      
    

cadastrar(){

  Map<String,dynamic> cadastro = {};

  print("Digite seu nome: ");
  String nome = stdin.readLineSync().toString();
  cadastro["nome"] = nome;

  print("Digite sua idade: ");
  String idade = stdin.readLineSync().toString();
  cadastro["idade"] = idade;
  
  print("Digite sua cidade: ");
  String cidade = stdin.readLineSync().toString();
  cadastro["cidade"] = cidade;

  cadastros.add(cadastro);
}


imprimir(){
  for (var i = 0; i < cadastros.length; i++) {
    print(cadastros[i]);
    print("\n");
  }
}

sair(){
  print("Programa Finalizado");
  condicao = false;
}
