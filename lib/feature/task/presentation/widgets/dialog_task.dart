import 'package:abo_hamdy/feature/task/presentation/controller/task_bloc.dart';
import 'package:abo_hamdy/feature/task/presentation/controller/task_event.dart';
import 'package:abo_hamdy/services/router.dart';
import 'package:abo_hamdy/services/service_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../app/presentation/widgets/app_text.dart';
import '../../../app/presentation/widgets/app_text_field.dart';
import '../../domain/models/task_model.dart';


class DialogTask extends StatefulWidget {
  final TaskModel ?item;

   DialogTask({super.key,  this.item});

  @override
  State<DialogTask> createState() => _DialogTaskState();
}

class _DialogTaskState extends State<DialogTask> {

    late TextEditingController titleController ;

    late TextEditingController subTitleController;
    final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    titleController = TextEditingController(text: widget.item?.title??"");
    subTitleController = TextEditingController(text: widget.item?.subTitle??"");

  }



  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: REdgeInsetsDirectional.all(12),
        child: FormBuilder(
           key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText.labelLarge(widget.item==null?"إضافة مهمة":"تعديل مهمة",textAlign: TextAlign.center,),
               Divider(color: Colors.grey.withOpacity(0.6),),
              5.verticalSpace,
              AppTextFormField(
                hintText: "عنوان",
                controller:titleController ,
              ),
              10.verticalSpace,
              AppTextFormField(
                hintText: "المهمة",
                controller:subTitleController ,
                maxLines: 6,
              ),
              10.verticalSpace,
              ElevatedButton(
                onPressed: () {
                  _formKey.currentState!.save();
                  _formKey.currentState!.validate();
                  if (_formKey.currentState!.isValid) {
                    widget.item?.title == null ? context.read<TaskBloc>().add(
                        AddTaskEvent(
                            title: titleController.text,
                            subTitle: subTitleController.text,
                            completed: true
                        )) : context.read<TaskBloc>().add(EditeTaskEvent(
                        title: titleController.text,
                        subTitle: subTitleController.text,
                        completed: true,
                        index: widget.item?.index
                    ));
                    context.pop();
                  }
                },
                child: AppText(widget.item?.title==null?"حفظ":"تعديل"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
