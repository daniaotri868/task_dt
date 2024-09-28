import 'package:abo_hamdy/core/config/theme/extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UIConstants {
  static EdgeInsets horizontalListView35 = EdgeInsets.symmetric(horizontal: screenPadding35.w);
  static EdgeInsets verticalListView35 = EdgeInsets.symmetric(vertical: screenPadding35.w);


  static double screenPadding35 = 35;


  static double screenPadding = 35;


  static getShadow(BuildContext context) => context.colorScheme.outlineVariant.withOpacity(0.25);

  static List<BoxShadow> containerShadow(BuildContext context, {Offset? offset, Color? color}) => [
    BoxShadow(
      color: color ?? context.colorScheme.shadow.withOpacity(0.1),
      offset: offset ?? const Offset(0, 1),
      blurRadius: 2,
    )
  ];

}
