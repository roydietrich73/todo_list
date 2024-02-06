import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/flac_button.dart';
import 'package:todo_list/todo_list.dart';

class TodoListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
      ),
      body: Consumer<TodoList>(
        builder: (context, todoList, child) {
          return ListView.builder(
            itemCount: todoList.todos.length,
            itemBuilder: (context, index) {
              final todo = todoList.todos[index];
              return ListTile(
                title: Text(todo.title),
                leading: Checkbox(
                  value: todo.isDone,
                  onChanged: (value) {
                    Provider.of<TodoList>(context, listen: false)
                        .toggleTodoStatus(index);
                  },
                ),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    Provider.of<TodoList>(context, listen: false)
                        .removeTodo(index);
                  },
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FlacButton(),
    );
  }
}
