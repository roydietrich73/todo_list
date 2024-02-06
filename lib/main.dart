
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/todo_list.dart';
import 'package:todo_list/todo_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TodoList(),
      child: MaterialApp(
        home: TodoListScreen(),
      ),
    );
  }
}
