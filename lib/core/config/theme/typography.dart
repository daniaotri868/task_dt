part of "app_theme.dart";


TextTheme textTheme = TextTheme(
  displayLarge: TextStyle(
      fontFamily: 'ITCHandelGothicArabic',
      fontSize: 57.0.sp,
      fontWeight: FontWeight.w400),

  displaySmall: TextStyle(
      fontFamily: 'ITCHandelGothicArabic',
      fontSize: 22.0.sp,
      fontWeight: FontWeight.w400,
      height: 36.6),

  headlineLarge: TextStyle(
    fontFamily: 'ITCHandelGothicArabic',
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    height: 53.23.fromFigmaHeight(32),
  ),

  headlineMedium: TextStyle(
    fontFamily: 'ITCHandelGothicArabic',
    fontSize: 28.0.sp,
    fontWeight: FontWeight.w600,
    color: const Color(0xff023047),
    height: 32.fromFigmaHeight(28),
  ),
  headlineSmall: TextStyle(
    fontFamily: 'ITCHandelGothicArabic',
    fontSize: 19.0.sp,
    fontWeight: FontWeight.w500,
    height: 31.67.fromFigmaHeight(19),
  ),

  titleLarge: TextStyle(
      fontFamily: 'ITCHandelGothicArabic',
      fontSize: 23.0.sp,
      fontWeight: FontWeight.w900,
      height: 11.5.fromFigmaHeight(23),
      letterSpacing: 0.03),

  titleMedium: TextStyle(
      fontFamily: 'ITCHandelGothicArabic',
      fontSize: 20.0.sp,
      fontWeight: FontWeight.w700,
      height: 33.27.fromFigmaHeight(20)),

  titleSmall: TextStyle(
      fontFamily: 'ITCHandelGothicArabic',
      fontSize: 15.0.sp,
      fontWeight: FontWeight.w500,
      height: 7.5.fromFigmaHeight(15),
      letterSpacing: 0.03),

  labelLarge: TextStyle(
    fontFamily: 'ITCHandelGothicArabic',
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    letterSpacing: -0.3.w,
    height: 29.94.fromFigmaHeight(18),
  ),

  labelSmall: TextStyle(
      fontFamily: 'ITCHandelGothicArabic',
      fontSize: 11.0.sp,
      fontWeight: FontWeight.w500,
      height: 20.fromFigmaHeight(11)),

  bodyLarge: TextStyle(
    fontFamily: 'ITCHandelGothicArabic',
    fontSize: 15.sp,
    height: 26.62.fromFigmaHeight(15),
  ),

  bodySmall: TextStyle(
    fontFamily: 'ITCHandelGothicArabic',
    fontSize: 12.0.sp,
    height: 22.49.fromFigmaHeight(12),
  ),
);

//?  Design text styles
extension TextThemeExtension on TextTheme {
  TextStyle get sumImageText => TextStyle(
      fontFamily: 'ITCHandelGothicArabic',
      fontWeight: FontWeight.normal,
      fontSize: 16.sp,
      height: 17.fromFigmaHeight(16));

  TextStyle get buttonText => TextStyle(
        fontFamily: 'ITCHandelGothicArabic',
        fontWeight: FontWeight.w500,
        fontSize: 14.sp,
        height: 23.29.fromFigmaHeight(14),
      );

  TextStyle get regularText => TextStyle(
        fontFamily: 'ITCHandelGothicArabic',
        fontWeight: FontWeight.w500,
        letterSpacing: -0.5.w,
        fontSize: 14.sp,
        height: 18.fromFigmaHeight(14),
      );

  TextStyle get listTitle => TextStyle(
        fontFamily: 'ITCHandelGothicArabic',
        fontWeight: FontWeight.w500,
        fontSize: 16.sp,
        letterSpacing: -0.5.w,
        height: 16.fromFigmaHeight(16),
      );

  TextStyle get informerText => TextStyle(
        fontFamily: 'ITCHandelGothicArabic',
        fontWeight: FontWeight.w400,
        fontSize: 12.sp,
        height: 25.fromFigmaHeight(12),
      );

  TextStyle get ratingText => TextStyle(
        fontFamily: 'ITCHandelGothicArabic',
        fontWeight: FontWeight.w600,
        fontSize: 14.sp,
        letterSpacing: -0.5.w,
        height: 18.9.fromFigmaHeight(14),
      );

  TextStyle get ratingNumber => TextStyle(
        fontFamily: 'ITCHandelGothicArabic',
        fontWeight: FontWeight.w400,
        fontSize: 10.sp,
        height: 18.74.fromFigmaHeight(10),
      );

  ///            <<< NEW TEXT STYLE >>
  /// this text is need to set weight[]  from [FamilyUtils] extension
  TextStyle get display => TextStyle(
        fontFamily: 'ITCHandelGothicArabic',
        fontSize: 32.sp,
        letterSpacing: -0.16.w,
        height: 40.fromFigmaHeight(32),
      );

  TextStyle get heading => TextStyle(
        fontFamily: 'ITCHandelGothicArabic',
        fontSize: 24.sp,
        letterSpacing: -0.16.w,
        height: 32.fromFigmaHeight(24),
      );

  TextStyle get label => TextStyle(
        fontFamily: 'ITCHandelGothicArabic',
        fontSize: 14.0.sp,
        height: 26.24.fromFigmaHeight(14),
      );

  TextStyle get body => TextStyle(
        fontFamily: 'ITCHandelGothicArabic',
        fontSize: 16.sp,
        height: 11.5.fromFigmaHeight(16),
      );

  TextStyle get paragraph => TextStyle(
      fontFamily: 'ITCHandelGothicArabic',
      fontSize: 13.sp,
      letterSpacing: 0.03,
      height: 24.36.fromFigmaHeight(13));

  TextStyle get footnote => TextStyle(
        fontFamily: 'ITCHandelGothicArabic',
        fontSize: 12.sp,
        letterSpacing: -0.16.w,
        height: 16.fromFigmaHeight(12),
      );

  TextStyle get xs => TextStyle(
        fontFamily: 'ITCHandelGothicArabic',
        fontSize: 12.sp,
        height: 18.fromFigmaHeight(12),
      );
}

extension FamilyUtils on TextStyle {
  TextStyle get extraBold => copyWith(fontWeight: FontWeight.w800);

  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);

  TextStyle get semiBold => copyWith(fontWeight: FontWeight.w600);

  TextStyle get medium => copyWith(fontWeight: FontWeight.w500);

  TextStyle get regular => copyWith(fontWeight: FontWeight.w400);

  TextStyle get light => copyWith(fontWeight: FontWeight.w300);
}

class HelperFont {
  static FontWeight? w440 =
      FontWeight.lerp(FontWeight.w400, FontWeight.w500, 0.4);

  static FontWeight? w430 =
      FontWeight.lerp(FontWeight.w400, FontWeight.w500, 0.3);

  static FontWeight? w460 =
      FontWeight.lerp(FontWeight.w400, FontWeight.w500, 0.6);

  static FontWeight? w428 =
      FontWeight.lerp(FontWeight.w400, FontWeight.w500, 0.28);

  static FontWeight? w472 =
      FontWeight.lerp(FontWeight.w400, FontWeight.w500, 0.72);

  static FontWeight? w536 =
      FontWeight.lerp(FontWeight.w500, FontWeight.w600, 0.36);
}
