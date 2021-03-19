import 'dart:io';

List<String> produtos = [];
bool condicao = true;
main(){

  while (condicao){
    
    print("=== Adicione um produto ===");
    var text = stdin.readLineSync();
    text = text.toString();

    if(text == "sair"){

    sair();

    }else if (text == "imprimir"){
      
    imprimir();

    }else if (text == "remover") {

    remover();

    }else {

    adicionarProdutos(text);
    
    }
  }
}

imprimir(){
  for (var i = 0; i < produtos.length; i++) {
    print("Item $i: ${produtos[i]}");
  }
}

remover(){
  print("=== Qual item você deseja remover? === ");
  imprimir();
  var item2 = stdin.readLineSync();
  var item1 = item2.toString();
  var item = int.parse(item1);
  produtos.removeAt(item);
  print("=== Produto Removido ===");
}

sair(){
  print("=== Terminou o programa ===");
  condicao = false;
}

adicionarProdutos(text){
  produtos.add(text);
  print("\x1B[2J\x1B[0;0H");
}