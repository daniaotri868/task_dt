
import 'package:flutter/cupertino.dart';

import '../../domain/models/task_model.dart';

@immutable
class TaskState {

  final List<TaskModel>? listTask;
  const TaskState({
    this.listTask = const [],

  });

  TaskState copyWith({

    final List<TaskModel>? listTask,

  }) {
    return TaskState(
      listTask: listTask??this.listTask,



    );
  }
}
