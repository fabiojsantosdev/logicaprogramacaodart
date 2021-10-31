import 'dart:convert';

import 'package:http/http.dart' as http;

//Consumindo Api
Future main() async {
  final todo = await fetch();
  print(todo.userid);
}

Future<Todo> fetch() async {
  var urll = 'https://jsonplaceholder.typicode.com/todos/1';
  var response = await http.get(Uri.parse(urll));
  var json = jsonDecode(response.body);
  var todo = Todo.fromJson(json);
  return todo;
}

// Metodo mapear retorno json.
class Todo {
  final String title;
  final int id;
  final int userid;
  final bool completed;

  Todo(
      {required this.title,
      required this.id,
      required this.userid,
      required this.completed});

  factory Todo.fromJson(Map json) {
    return Todo(
        title: json['title'] ??
            0, // Tratar exception: type 'Null' is not a subtype of type 'int' #0 -- Colocar ?? e pasar um valor caso venha nulo.
        id: json['id'] ?? 0,
        userid: json['userid'] ?? 0,
        completed: json['completed'] ?? 0);
  }

//Tranformando o retorno api em json.
  Map toJson() {
    return {
      'id': id,
      'title': title,
      'userid': userid,
      'completed': completed,
    };
  }
}
