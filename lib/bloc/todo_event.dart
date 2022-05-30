// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'todo_bloc.dart';

abstract class TodoEvent extends Equatable {
  const TodoEvent();

  @override
  List<Object> get props => [];
}


class LoadTodo extends TodoEvent {

  final List<Todo> todo;
  const LoadTodo({this.todo =const <Todo>[]});

  @override
  List<Object> get props => [todo];
}

class TodoAdded extends TodoEvent {

  final Todo todo;
  const TodoAdded({required this.todo});

  @override
  List<Object> get props => [todo];


}

class TodoUpdated extends TodoEvent {
  
  final Todo todo;
  const TodoUpdated({required this.todo});

  @override
  List<Object> get props => [todo];

}

class TodoDeleted extends TodoEvent {
  final Todo todo;
  const TodoDeleted({required this.todo});

  @override
  List<Object> get props => [todo];
}
