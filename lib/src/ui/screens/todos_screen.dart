import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gmap/src/data/bloc/todos_filter/todos_filter_bloc.dart';
import 'package:gmap/src/data/models/todos_filter_model.dart';
import 'package:gmap/src/ui/screens/add_todo_screen.dart';
import '../../data/bloc/todos/todos_bloc.dart';

class TodosScreen extends StatelessWidget {
  const TodosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            onTap: ((tabIndex) {
              switch (tabIndex) {
                case 0:
                  BlocProvider.of<TodosFilterBloc>(context).add(
                      const UpdateTodos(todosFilter: TodosFilter.completed));
                  break;
                case 1:
                  return BlocProvider.of<TodosFilterBloc>(context)
                      .add(const UpdateTodos(todosFilter: TodosFilter.pending));
                  break;
              }
            }),
            tabs: const [
              Tab(icon: Icon(Icons.pending)),
              Tab(icon: Icon(Icons.fork_right)),
            ],
          ),
        ),
        body: TabBarView(children: [
          _todos('Pending To Dos'),
          _todos('Completed To Dos'),
        ]),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: ((context) => AddTodoScreen())),
          ),
        ),
      ),
    );
  }

  BlocConsumer<TodosFilterBloc, TodosFilterState> _todos(String title) {
    return BlocConsumer<TodosFilterBloc, TodosFilterState>(
      listener: (context, state) {
        if (state is TodosFilterLoaded) {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('${state.filteredTodos.length}')));
        }
      },
      builder: (context, state) {
        if (state is TodosFilterLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state is TodosFilterLoaded) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(title),
                SizedBox(
                  width: double.infinity,
                  height: 500,
                  child: ListView.builder(
                    itemCount: state.filteredTodos.length,
                    itemBuilder: ((context, index) {
                      return ListTile(
                        leading: Text(state.filteredTodos[index].id.toString()),
                        title: Text(state.filteredTodos[index].title),
                        subtitle: InkWell(
                          onTap: () {
                            context.read<TodosBloc>().add(UpdateTodo(
                                todo: state.filteredTodos[index]
                                    .copyWith(completed: true)));
                          },
                          child: Text(
                              'Edit => isCompleted ${state.filteredTodos[index].completed}'),
                        ),
                        trailing: IconButton(
                          icon: const Icon(
                            Icons.delete,
                            color: Colors.red,
                          ),
                          onPressed: () {
                            context.read<TodosBloc>().add(
                                DeleteTodo(todo: state.filteredTodos[index]));
                          },
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          );
        }
        return const Center(
          child: Text('Something went wrong'),
        );
      },
    );
  }
}
