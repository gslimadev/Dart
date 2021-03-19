import 'src/cadastrar.dart';
import 'src/carrinhoCompras.dart';
import 'src/repeticao.dart';

main(List<String> arguments) {
  if (arguments[0] == 'cadastrar'){
    CadastrarUsuario();
  } else if (arguments[0] == 'carrinhoCompras'){
    carrinhoDeCompras();
  } else if (arguments[0] == 'repeticao'){
    repeticao();
  } else {
    print('Esse comando não é válido');
  }
}
