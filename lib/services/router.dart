import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../feature/task/presentation/screen/all_task.dart';



final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

final router = GoRouter(
  initialLocation: AllTask.path,
  // navigatorKey: _rootNavigatorKey,
  routes: [
    GoRoute(
      path: AllTask.path,
      name: AllTask.name,
      builder: (context, state) =>  const AllTask(),
    ),
  ],
);

