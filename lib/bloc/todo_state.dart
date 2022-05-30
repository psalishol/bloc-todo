// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'todo_bloc.dart';

abstract class TodoState extends Equatable {
  const TodoState();
  
  @override
  List<Object> get props => [];
}

class TodoLoading extends TodoState {}


class TodoLoaded extends TodoState {

  final List<Todo> todo;

  const TodoLoaded({this.todo = const <Todo>[]});

  @override
  List<Object> get props => [todo];

}

class TodoError extends TodoState {}
