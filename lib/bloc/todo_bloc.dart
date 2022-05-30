import 'package:bloc/bloc.dart';
import 'package:bloc_todo/model/model.dart';
import 'package:equatable/equatable.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(TodoLoading()) {
    on<LoadTodo>(_onLoadTodo);
    on<TodoAdded>(_onTodoAdded);
    on<TodoUpdated>(_onTodoUpdated);
    on<TodoDeleted>(_onTodoDeleted);
  }

  Future<void> _onLoadTodo(LoadTodo event, Emitter<TodoState> emit) async{
    await Future<void>.delayed(const Duration(seconds: 4));
    emit(TodoLoaded(todo: event.todo));
  }

  Future<void> _onTodoAdded(TodoAdded event, Emitter<TodoState> emit) async{
    final state = this.state;
    if(state is TodoLoaded){
      emit(TodoLoaded(todo: List.from(state.todo)..add(event.todo)));
    }
  }
  void _onTodoUpdated(TodoUpdated event, Emitter<TodoState> emit) {
    final state = this.state;
    if(state is TodoLoaded){
      List<Todo> todo = (state.todo.map((todos) {
        return todos.id == event.todo.id ? event.todo : todos;})).toList();
      emit(TodoLoaded(todo: todo));
    }
  
  }


  void _onTodoDeleted(TodoDeleted event, Emitter<TodoState> emit){
    final state = this.state;
    if(state is TodoLoaded){
      List<Todo> todo = state.todo.where((todos) => todos.id != event.todo.id).toList();
      emit(TodoLoaded(todo: todo));
    }
  }
}
