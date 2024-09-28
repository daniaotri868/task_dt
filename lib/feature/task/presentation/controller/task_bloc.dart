
import 'dart:convert';

import 'package:abo_hamdy/feature/task/presentation/controller/task_event.dart';
import 'package:abo_hamdy/feature/task/presentation/controller/task_state.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/di/di_container.dart';
import '../../../app/domain/repositories/prefs_repository.dart';
import '../../domain/models/task_model.dart';


@injectable
class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final PrefsRepository prefsRepository = getIt<PrefsRepository>();



  TaskBloc() : super(const TaskState()) {
    on<AddTaskEvent>(_onAddTaskEvent);
    on<SaveListTaskEvent>(_onSaveListTaskEvent);
    on<EditeTaskEvent>(_onEditeTaskEvent);
    on<DeleteTaskEvent>(_onDeleteTaskEvent);
    on<DeleteAllTaskEvent>(_onDeleteAllTaskEvent);

  }

  _onEditeTaskEvent(EditeTaskEvent event, emit)async {
    List<TaskModel>? newList = state.listTask?.map((e) {
      if (e.index == event.index) {
        return
             e.copyWith(
              completed: event.completed,
               title: event.title,
               subTitle: event.subTitle,
        );
      }
      return e;
    }).toList();

    emit(state.copyWith(
        listTask: newList));
    List? novelModelToJson = state.listTask
        ?.map<Map<String, dynamic>>((novelModel) => novelModel.toJson())
        .toList()
        .cast<dynamic>();
    await prefsRepository.setTask(json.encode(novelModelToJson));

  }
  _onAddTaskEvent(AddTaskEvent event, emit) async{

    emit(state.copyWith(listTask: (state.listTask??[])+
        [
          TaskModel(
              index: state.listTask?.length==0?1:state.listTask!.length+1,
              subTitle: event.subTitle,
              title: event.title,
               completed: event.completed
          )
        ]));

    List? novelModelToJson = state.listTask
        ?.map<Map<String, dynamic>>((novelModel) => novelModel.toJson())
        .toList()
        .cast<dynamic>();
    await prefsRepository.setTask(json.encode(novelModelToJson));


  }
  _onSaveListTaskEvent(SaveListTaskEvent event, emit) {
    emit(state.copyWith(listTask: event.list));
  }
  _onDeleteTaskEvent(DeleteTaskEvent event, emit)async {
    emit(state.copyWith(listTask: state.listTask?..removeWhere((element) =>
    element==event.item)));

    List? novelModelToJson = state.listTask
        ?.map<Map<String, dynamic>>((novelModel) => novelModel.toJson())
        .toList()
        .cast<dynamic>();
    await prefsRepository.setTask(json.encode(novelModelToJson));


  }
  _onDeleteAllTaskEvent(DeleteAllTaskEvent event, emit) async{
    emit(state.copyWith(listTask: []));
    List? novelModelToJson = state.listTask
        ?.map<Map<String, dynamic>>((novelModel) => novelModel.toJson())
        .toList()
        .cast<dynamic>();
    await prefsRepository.setTask(json.encode(novelModelToJson));

  }



}
