import 'package:flutter/material.dart';
import 'package:todos_app_api/screens/todo_screen.dart';
import '../models/todo.dart';

class TodosWidget extends StatelessWidget {
  final List<Todo> todos;
  const TodosWidget({super.key, required this.todos});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: todos.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => TodoScreen(
                  id: todos[index].id,
                  title: todos[index].title,
                  completed: todos[index].completed,
                ),
              ));
            },
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text(todos[index].id.toString()),
              ),
              title: Text(todos[index].title),
              trailing: todos[index].completed
                  ? const Icon(Icons.done, color: Colors.green)
                  : null,
            ),
          ),
        );
      },
    );
  }
}
