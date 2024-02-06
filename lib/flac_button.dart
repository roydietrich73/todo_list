import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/todo_list.dart';

class FlacButton extends StatelessWidget {
  const FlacButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            String newTodoTitle = '';
            return AlertDialog(
              title: Text('Add Todo'),
              content: TextField(
                onChanged: (value) {
                  newTodoTitle = value;
                },
                decoration: InputDecoration(hintText: 'Enter todo title'),
              ),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Provider.of<TodoList>(context, listen: false)
                        .addTodo(newTodoTitle);
                    Navigator.pop(context);
                  },
                  child: Text('Add'),
                ),
              ],
            );
          },
        );
      },
      child: Icon(Icons.add),
    );
  }
}
