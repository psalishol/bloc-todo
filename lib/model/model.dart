// ignore_for_file: public_member_api_docs, sort_constructors_first


import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart' show immutable;

@immutable
class Todo extends Equatable {

  final String id;
  final String task;
  final String description;
  bool? isCompleted;
  bool? isCancelled;
  Todo(
    {
    required this.id,
    required this.task,
    required this.description,
    this.isCompleted,
    this.isCancelled,
  }
  ){
    isCompleted = isCompleted ?? false;
    isCancelled = isCancelled ?? false;
  }

  Todo copyWith({
    String? id,
    String? task,
    String? description,
    bool? isCompleted,
    bool? isCancelled,
  }){
    return Todo(
      id: id ?? this.id, 
      task: task ?? this.task, 
      description: description ?? this.description, 
      isCompleted: isCompleted ?? this.isCompleted, 
      isCancelled: isCancelled ?? this.isCancelled
    );
  }

  @override
  List<Object?> get props => [
    id,
    task,
    description,
    isCompleted,
    isCancelled,
  ];

  static List<Todo> todoList = [
    Todo(
      id: "324523", 
      task: "Go to the market", 
      description: "Go and buy some line and clip from the market"),
    Todo(
      id: "3243727523", 
      task: "Go to the filed", 
      description: "Go and buy some line and sds from the market"),
  ];
}

