import 'package:abo_hamdy/core/config/theme/extension.dart';
import 'package:abo_hamdy/feature/task/presentation/controller/task_bloc.dart';
import 'package:abo_hamdy/feature/task/presentation/controller/task_event.dart';
import 'package:abo_hamdy/feature/task/presentation/screen/all_task.dart';
import 'package:abo_hamdy/feature/task/presentation/widgets/delete_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../../core/config/theme/constants.dart';
import '../../../app/presentation/widgets/animated_dialog.dart';
import '../../../app/presentation/widgets/app_text.dart';
import '../../domain/models/task_model.dart';
import 'dialog_task.dart';


class ItemTask extends StatefulWidget {
  final TaskModel item;
  const ItemTask({super.key, required this.item});

  @override
  State<ItemTask> createState() => _ItemTaskState();
}

class _ItemTaskState extends State<ItemTask> {
  @override
  bool ?isCompleted;
  void initState() {
    // TODO: implement initState
    super.initState();
    isCompleted=widget.item.completed??true;
  }
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AnimatedDialog.show(context, child: DialogTask(item: widget.item,));
      },
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: Colors.white70,
          boxShadow:UIConstants.containerShadow(context)
        ),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AppText.headingRegular(widget.item.title??"",overflow: TextOverflow.ellipsis,),
                  10.verticalSpace,
                  AppText(widget.item.subTitle??"",overflow: TextOverflow.ellipsis,)
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  IconButton(onPressed: () {
                    AnimatedDialog.show(context, child: DeleteDialog(item: widget.item));
                  }, icon:  const Icon(Icons.close,color: Colors.red,)),
                  Checkbox(
                    fillColor:WidgetStatePropertyAll(context.colorScheme.primary.withOpacity(0.1)),
                    checkColor: context.colorScheme.primary,
                    splashRadius: 1,
                    value:isCompleted??true , onChanged: (value) {
                    setState(() {
                      isCompleted=value;
                    });
                    context.read<TaskBloc>().add(EditeTaskEvent(
                        title:widget.item.title ,
                        subTitle:widget.item.subTitle,
                        completed: value,
                        index: widget.item?.index
                    ));
                  },),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
