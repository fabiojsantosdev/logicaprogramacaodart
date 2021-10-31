void main() {
//criando array

  var nomes = ['milene', 'sonia', 'fabio', 'naum']; //lista normal
  List<String> nome = [
    'milene',
    'sonia',
    'fabio',
    'naum'
  ]; //Tipagem de array entre sinal de <> colocar o tipo

//adicionar itens no array
  nomes.add('lucia');

  print(nome);

  //remover itens do array

  nomes.remove('sonia');
  nomes.removeAt(1); //remove itens pelo index.
  print(nomes);
}
