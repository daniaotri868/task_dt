
import 'package:abo_hamdy/services/router.dart';
import 'package:abo_hamdy/services/service_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'core/config/theme/app_theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import'package:abo_hamdy/core/color_scheme/light_color_scheme.dart';


class App extends StatelessWidget {
  const App({super.key});
  static final GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {

    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: false,
        splitScreenMode: true,
        builder: (context, child) => Builder(
            builder: (context) {
              final theme = AppTheme.init(
                darkColorScheme: lightColorScheme,
                lightColorScheme: lightColorScheme,
              );
              return GlobalLoaderOverlay(
                useDefaultLoading: false,
                // overlayWidget: const LoadingIndicator(),
                closeOnBackButton: true,
                overlayColor: Colors.black.withOpacity(.5),
                overlayOpacity: .2,
                child: AnnotatedRegion<SystemUiOverlayStyle>(
                  value:  const SystemUiOverlayStyle(
                      statusBarColor: Color(0xFF024A22),
                      systemStatusBarContrastEnforced: true),
                  child: ServiceProvider(
                    child: MaterialApp.router(
                      key: navKey,
                      title: 'Task',
                      debugShowCheckedModeBanner: false,
                      routerConfig: router,
                      locale: const Locale('ar'),
                      localizationsDelegates: [
                        GlobalMaterialLocalizations.delegate,
                        GlobalWidgetsLocalizations.delegate,
                        GlobalCupertinoLocalizations.delegate,
                        DefaultCupertinoLocalizations.delegate,
                        DefaultMaterialLocalizations.delegate,
                        DefaultCupertinoLocalizations.delegate,
                      ],
                      supportedLocales: [
                        const Locale('ar'), // اللغة العربية
                      ],
                      theme: theme.lightTheme,
                      builder: (context, child) {
                        return child!;
                      },
                    ),
                  ),
                ),
              );
            })
        //     },
        //),
      ),
    )
    ;
  }
}
