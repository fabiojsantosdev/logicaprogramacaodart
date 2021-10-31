import 'dart:io';

Map<String,dynamic> cadastro = {};

main(){
  print('Digite seu nome');
  String? nome = stdin.readLineSync();
  cadastro['nome'] = nome;

  print('Digite sua Idade');
  String? idade = stdin.readLineSync();
  cadastro['idade'] = idade;

  print('Digite sua Cidade');
  String? cidade = stdin.readLineSync();
  cadastro['cidade'] = cidade;

  print('Digite seu nome');
  String? estado = stdin.readLineSync();
  cadastro['estado'] = estado;

  print(cadastro);

}