import 'package:abo_hamdy/feature/app/presentation/widgets/app_text.dart';
import 'package:abo_hamdy/feature/task/domain/models/task_model.dart';
import 'package:abo_hamdy/feature/task/presentation/screen/all_task.dart';
import 'package:abo_hamdy/services/router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../controller/task_bloc.dart';
import '../controller/task_event.dart';

class DeleteDialog extends StatelessWidget {
  final TaskModel item;
  const DeleteDialog({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppText.headingSemiBold("هل أنت متأكد؟؟"),
            20.verticalSpace,
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(onPressed: () {
                    context.read<TaskBloc>().add(DeleteTaskEvent(item: item));
                    context.pop();

                  }, child: AppText("نعم")),
                ),
                6.horizontalSpace,
                Expanded(
                  child: ElevatedButton(onPressed: () {
                    context.pop();
                  }, child: AppText("لا")),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
