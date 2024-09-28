import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app.dart';
import 'core/di/di_container.dart';



FutureOr<void> main() async {
  await initializeApp();

  runApp(const App());

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}

Future<void> initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();
  await ScreenUtil.ensureScreenSize();
}
