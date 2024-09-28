import 'dart:convert';

import 'package:abo_hamdy/feature/app/presentation/widgets/app_appbar.dart';
import 'package:abo_hamdy/feature/task/domain/models/task_model.dart';
import 'package:abo_hamdy/feature/task/presentation/controller/task_bloc.dart';
import 'package:abo_hamdy/feature/task/presentation/controller/task_event.dart';
import 'package:abo_hamdy/feature/task/presentation/widgets/dialog_task.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../../core/di/di_container.dart';
import '../../../app/domain/repositories/prefs_repository.dart';
import '../../../app/presentation/widgets/animated_dialog.dart';
import '../../../app/presentation/widgets/app_scaffold.dart';
import '../../../app/presentation/widgets/app_text.dart';
import '../controller/task_state.dart';
import '../widgets/item_task.dart';

class AllTask extends StatefulWidget {
  static String name="/AllTask";
  static String path="/AllTask";
  const AllTask({super.key});

  @override
  State<AllTask> createState() => _AllTaskState();
}

class _AllTaskState extends State<AllTask> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    List<TaskModel> jsonToNovelModel = [];
    final PrefsRepository prefsRepository = getIt<PrefsRepository>();
      final jsonString = prefsRepository.tasks??"";

     if(jsonString.isNotEmpty)
       {
         List decodeJsonData = json.decode(jsonString??"");
         jsonToNovelModel = decodeJsonData
             .map<TaskModel>(
                 (jsonNovelModel) => TaskModel.fromJson(jsonNovelModel))
             .toList();
         context.read<TaskBloc>().add(SaveListTaskEvent(list: jsonToNovelModel));
       }

  }
  Widget build(BuildContext context) {
    return BlocBuilder<TaskBloc, TaskState>(
  builder: (context, state) {
    return AppScaffold(
      appBar: AppAppBar(
        title: AppText("المهام"),
        centerTitle: true,
      ),
      body: RPadding(
        padding: const EdgeInsets.all(13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Divider(color: Colors.grey.withOpacity(0.6),),
            ElevatedButton(onPressed: () {
              AnimatedDialog.show(context, child:  DialogTask());
            }, child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.add),
                AppText("إضافة مهمة"),
              ],
            )),
            20.verticalSpace,
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => ItemTask(item: state.listTask![index],),
                  separatorBuilder: (context, index) => 8.verticalSpace,
                  itemCount: state.listTask?.length??0,),
            ),
          ],
        ),
      ),
    );
  },
);
  }
}
