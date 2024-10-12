// ignore_for_file: prefer_const_constructors

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:todos_app_api/api/todo_api.dart';
import 'package:todos_app_api/models/todo.dart';

part 'todos_state.dart';

class TodosCubit extends Cubit<TodosState> {
  final TodosApi todosApi;

  TodosCubit({required this.todosApi}) : super(LoadingState());

  Future<void> getAllTodos() async {
    emit(LoadingState());
    try {
      final todos = await todosApi.getAllTodos();
      emit(LoadedState(todos: todos));
    } catch (e) {
      emit(
          ErrorState(message: "Something Went Wrong, Please Try Again Later!"));
    }
  }
}
