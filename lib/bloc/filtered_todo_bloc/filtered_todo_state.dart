part of 'filtered_todo_bloc.dart';

abstract class FilteredTodoState extends Equatable {
  const FilteredTodoState();
  
  @override
  List<Object> get props => [];
}

class FilteredTodoInitial extends FilteredTodoState {}
