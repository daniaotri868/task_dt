
import 'package:flutter/cupertino.dart';

import '../../domain/models/task_model.dart';

@immutable
abstract class TaskEvent {}

class AddTaskEvent extends TaskEvent {
  final String ?title;
  final String ?subTitle;
  final bool ?completed;

  AddTaskEvent({this.subTitle, this.completed, this.title});
}

class SaveListTaskEvent extends TaskEvent {
  final List<TaskModel> ?list;

  SaveListTaskEvent({this.list});
}
class EditeTaskEvent extends TaskEvent {
  final int ?index;
  final String ?title;
  final String ?subTitle;
  final bool ?completed;

  EditeTaskEvent({this.subTitle, this.completed, this.title,this.index});
}
class DeleteTaskEvent extends TaskEvent {
  final TaskModel ?item;

  DeleteTaskEvent({this.item});
}

class DeleteAllTaskEvent extends TaskEvent {

  DeleteAllTaskEvent();
}
