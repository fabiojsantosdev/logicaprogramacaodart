/*Map<String,dynamic> maps = {
    'nome' : 'Fabio',
    'idade' : 40,
    'cidade' : 'Betim',
    'estado' : 'MG',
  };

  maps['nome'] = 'Jorge';
  print(maps);*/

import 'package:universal_io/io.dart';

List<Map<String,dynamic>> cadastros = [];


main(){
  bool loop = true;

  while(loop){
    print('==Digite um comando==');
    String? comando = stdin.readLineSync();
    if(comando == 'sair'){
      print('Programa Finalizado.');
      loop = false;
    }else if(comando == 'cadastro'){
      cadastrar();
    }else if(comando == 'imprimir'){
      print(cadastros);
    }else
      print('Comando não existe.');
  }
}

cadastrar(){
  Map<String, dynamic> cadastro ={};
  print('==Digite seu nome==');
  cadastro['nome'] = stdin.readLineSync();

  print('==Digite sua idade==');
  cadastro['idade'] = stdin.readLineSync();

  print('==Digite a sua cidade==');
  cadastro['cidade'] = stdin.readLineSync();

  print('==Digite o estado==');
  cadastro['estado'] = stdin.readLineSync();
  cadastros.add(cadastro);
}