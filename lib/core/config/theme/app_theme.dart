import 'package:abo_hamdy/core/config/theme/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


part 'app_button_theme.dart';

part 'general_theme.dart';

part 'typography.dart';

class AppTheme {
  //TODO init only once
  AppTheme.init({
    required this.darkColorScheme,
    required this.lightColorScheme,
  });

  final ColorScheme darkColorScheme;
  final ColorScheme lightColorScheme;

  ///Appbar
  ///todo only need to set responsive value
  AppBarTheme appBarTheme(ColorScheme scheme) => AppBarTheme(
      backgroundColor: scheme.surface,
      toolbarHeight: 53,
      elevation: 0,
      foregroundColor: scheme.onSurface,
      centerTitle: false,
      iconTheme: IconThemeData(size: 17.w, color: scheme.onPrimary));

  ///CheckBox
  CheckboxThemeData checkboxThemeData({required bool isDark}) =>
       CheckboxThemeData(
        fillColor: MaterialStateProperty.all(
            isDark ? darkColorScheme.primary : lightColorScheme.primary),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
      );

  /// Icon
  IconThemeData iconTheme(ColorScheme scheme) => IconThemeData(
    size: 20.r,
    color: scheme.primary,
  );

  ///Chip
  ChipThemeData chipTheme(ColorScheme scheme) => ChipThemeData(
      padding: REdgeInsets.only(top: 6, left: 24, right: 24),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.r),
      ),
      side: BorderSide.none,
      showCheckmark: false,
      selectedColor: scheme.primary,
      labelStyle: textTheme.listTitle.copyWith(
        height: 17,
      ),
  );



  DividerThemeData dividerTheme(ColorScheme scheme) => DividerThemeData(
      color: scheme.outline,
      endIndent: 0,
      indent: 0,
      thickness: 1.r,
      space: 20.r);





}
