import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'filtered_todo_event.dart';
part 'filtered_todo_state.dart';

class FilteredTodoBloc extends Bloc<FilteredTodoEvent, FilteredTodoState> {
  FilteredTodoBloc() : super(FilteredTodoInitial()) {
    on<FilteredTodoEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
