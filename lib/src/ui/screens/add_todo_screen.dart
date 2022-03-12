import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gmap/src/data/models/todo_model.dart';

import '../../data/bloc/todos/todos_bloc.dart';

class AddTodoScreen extends StatelessWidget {
  AddTodoScreen({Key? key}) : super(key: key);

  TextEditingController idController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController descController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Todo'),
      ),
      body: BlocListener<TodosBloc, TodosState>(
        listener: (context, state) {
          if (state is TodosLoaded) {
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text('To do Added!')));
          }
        },
        child: Column(
          children: [
            TextFormField(
              controller: idController,
              decoration: const InputDecoration(hintText: 'id'),
            ),
            TextFormField(
              controller: nameController,
              decoration: const InputDecoration(hintText: 'Name'),
            ),
            TextFormField(
              controller: descController,
              decoration: const InputDecoration(hintText: 'Description'),
            ),
            ElevatedButton(
              onPressed: () {
                var todo = Todo(
                    userId: int.parse(idController.value.text),
                    id: int.parse(idController.value.text),
                    title: nameController.value.text,
                    completed: true);
                context.read<TodosBloc>().add(AddTodo(todo: todo));
                Navigator.pop(context);
              },
              child: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
