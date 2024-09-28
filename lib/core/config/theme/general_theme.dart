part of 'app_theme.dart';

extension AppThemeExtension on AppTheme {
  ///dark
  ThemeData get darkTheme => ThemeData(

      /// to set background color for BottomNavigation  see [https://stackoverflow.com/questions/49307858/style-bottomnavigationbar-in-flutter]
      canvasColor: darkColorScheme.surface,
      brightness: Brightness.dark,
      colorScheme: darkColorScheme,
      textTheme: textTheme,
      primaryColor: darkColorScheme.primary,
      useMaterial3: true,
      scaffoldBackgroundColor: darkColorScheme.surface,
      textButtonTheme: textButtonTheme(isDark: true),
      elevatedButtonTheme: elevatedButtonTheme(darkColorScheme),
      outlinedButtonTheme: outlinedButtonTheme(isDark: true),
      checkboxTheme: checkboxThemeData(isDark: true),
      chipTheme: chipTheme(darkColorScheme),
      appBarTheme: appBarTheme(darkColorScheme),
      iconTheme: iconTheme(darkColorScheme),
      filledButtonTheme: filledButtonTheme(isDark: true),
      dividerTheme: dividerTheme(darkColorScheme));

  ///light
  ThemeData get lightTheme => ThemeData(
        /// to set background color for BottomNavigation see  [https://stackoverflow.com/questions/49307858/style-bottomnavigationbar-in-flutter]
        canvasColor: lightColorScheme.surface,
        brightness: Brightness.light,
        primaryColor: lightColorScheme.primary,
        scaffoldBackgroundColor: lightColorScheme.surface,
        useMaterial3: true,
        textTheme: textTheme,
        colorScheme: lightColorScheme,
        textButtonTheme: textButtonTheme(isDark: false),
        elevatedButtonTheme: elevatedButtonTheme(lightColorScheme),
        outlinedButtonTheme: outlinedButtonTheme(isDark: false),
        checkboxTheme: checkboxThemeData(isDark: false),
        chipTheme: chipTheme(lightColorScheme),
        appBarTheme: appBarTheme(lightColorScheme),
        iconTheme: iconTheme(lightColorScheme),
        filledButtonTheme: filledButtonTheme(isDark: false),
        dividerTheme: dividerTheme(lightColorScheme),
      );
}
