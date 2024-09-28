
import 'package:abo_hamdy/feature/task/presentation/controller/task_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class ServiceProvider extends StatelessWidget {
  const ServiceProvider({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => GetIt.I<TaskBloc>()),
      ],
      child: child,
    );
  }

  final Widget child;
}
