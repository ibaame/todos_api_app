// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:todos_app_api/cubit/todos_cubit.dart';
import 'package:todos_app_api/widgets/error_widget.dart';
import 'package:todos_app_api/widgets/loading_widget.dart';
import 'package:todos_app_api/widgets/todos_widget.dart';

class TodosScreen extends StatelessWidget {
  const TodosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Todos"),
        ),
        body: BlocBuilder<TodosCubit, TodosState>(
          builder: (context, state) {
            if (state is LoadedState) {
              return TodosWidget(todos: state.todos);
            } else if (state is ErrorState) {
              return MyErrorWidget(message: state.message);
            } else {
              return LoadingWidget();
            }
          },
        ));
  }
}
