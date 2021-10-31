// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

void main() {
  print(stringToInt('d'));
}

int stringToInt(String text) {
  int value;

  //Tratar erro.
  try {
    value = int.parse(text);
  } catch (e) {
    throw Exception(
        'O text passado ($text) não e um numéro'); //usar throw para exibir o que causou erro no console.
  }

  return value;
}
