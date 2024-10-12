// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todos_app_api/api/todo_api.dart';
// import 'package:todos_app_api/bloc/todos_bloc.dart';
import 'package:todos_app_api/cubit/todos_cubit.dart';
import 'package:todos_app_api/screens/todos_screen.dart';
import 'helpers/my_bloc_observer.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodosCubit(todosApi: TodosApi())..getAllTodos(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Todos App',
        home: TodosScreen(),
      ),
    );
  }
}
