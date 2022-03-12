import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gmap/src/constants/ui_constants.dart';
import 'package:gmap/src/data/bloc/todos/todos_bloc.dart';
import 'package:gmap/src/data/models/todo_model.dart';
import 'package:gmap/src/ui/screens/todos_screen.dart';
import 'src/data/bloc/todos_filter/todos_filter_bloc.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TodosBloc()
            ..add(LoadTodos(todos: [
              Todo(
                  userId: 1,
                  id: 1,
                  title: 'First Bloc using Bloc Pattern',
                  completed: false),
              Todo(
                  userId: 1,
                  id: 2,
                  title: 'Second Bloc using Bloc Pattern',
                  completed: false),
              Todo(
                  userId: 1,
                  id: 3,
                  title: 'Third Bloc using Bloc Pattern',
                  completed: false),
            ])),
        ),
        BlocProvider(
          create: (context) =>
              TodosFilterBloc(todosBloc: BlocProvider.of<TodosBloc>(context)),
          child: Container(),
        ),
      ],
      child: MaterialApp(
        title: 'Bloc Provider',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Circular',
          primaryColor: UIConstant.kWhite,
        ),
        home: const TodosScreen(),
      ),
    );
  }
}
