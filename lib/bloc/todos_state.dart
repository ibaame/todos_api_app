part of 'todos_bloc.dart';

sealed class TodosState extends Equatable {
  const TodosState();

  @override
  List<Object> get props => [];
}

class LoadingState extends TodosState {}

class LoadedState extends TodosState {
  final List<Todo> todos;

  const LoadedState({required this.todos});

  @override
  List<Object> get props => [];
}

class ErrorState extends TodosState {
  final String message;
  const ErrorState({required this.message});

  @override
  List<Object> get props => [];
}
