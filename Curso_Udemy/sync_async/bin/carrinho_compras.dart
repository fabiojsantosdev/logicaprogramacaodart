import 'dart:io';

List<String> produtos = [];

main() {
  //List<String> produtos = []; // Variavel global criar antes da função main.


  bool condicao = true;
  while (condicao) {

    print('==Adicione um produto==');
    String? text = stdin.readLineSync();

    if (text == 'sair') {
      print('==Programa finalizado==');
      condicao = false;
    } else if (text== 'imprimir') {
      imprimir(); //Função para imprimir itens do array.
      // Adicionando index ao imprimir os itens
    }else if (text == 'remover') {
      remover(); //função para remover itens do array.
    } else {
      produtos.add(text!);
    }
  }
}


// função para aproveirar coding

imprimir(){
  for ( var i = 0; i < produtos.length; i++){
    print('Item $i - $produtos');
    //print('\n'); //espaçamento entre textos
  }
}

remover(){
  print('Qual produto quer remover');
  imprimir();
  int item = int.parse(stdin.readLineSync().toString()); // colocar toString para recolver erro The argument type 'String?' can't be assigned to the parameter type 'String'.
  produtos.removeAt(item);
  print('==Item Removido');
}

