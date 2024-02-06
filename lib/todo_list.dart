import 'package:flutter/material.dart';
import 'package:todo_list/todo.dart';

class TodoList extends ChangeNotifier {
  List<Todo> _todos = [];

  List<Todo> get todos => _todos;


  void addTodo(String title) {
    _todos.add(Todo(title: title));
    notifyListeners(); 
  }

  void toggleTodoStatus(int index) {
    _todos[index].isDone = !_todos[index].isDone;
    notifyListeners(); 
  }

  void removeTodo(int index) {
    _todos.removeAt(index);
    notifyListeners(); 
  }
}
