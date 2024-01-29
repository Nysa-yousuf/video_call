
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static FontWeight _getFontWeight(int weight) {
    switch (weight) {
      case 100:
        return FontWeight.w100;
      case 200:
        return FontWeight.w200;
      case 300:
        return FontWeight.w300;
      case 400:
        return FontWeight.w300;
      case 500:
        return FontWeight.w400;
      case 600:
        return FontWeight.w500;
      case 700:
        return FontWeight.w600;
      case 800:
        return FontWeight.w700;
      case 900:
        return FontWeight.w900;
    }
    return FontWeight.w400;
  }

  static TextStyle getArticleTextStyle(TextStyle? textStyle,
      {int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double letterSpacing = 0.15,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double wordSpacing = 0,
      double? fontSize}) {
    double? finalFontSize = fontSize ?? textStyle!.fontSize;

    Color? finalColor;
    if (color == null) {
      finalColor = xMuted
          ? textStyle!.color!.withAlpha(160)
          : (muted ? textStyle!.color!.withAlpha(200) : textStyle!.color);
    } else {
      finalColor = xMuted
          ? color.withAlpha(160)
          : (muted ? color.withAlpha(200) : color);
    }

    // return GoogleFonts.notoSansMalayalam(
    //     fontSize: finalFontSize,
    //     fontWeight: _getFontWeight(fontWeight),
    //     letterSpacing: letterSpacing,
    //     color: finalColor,
    //     decoration: decoration,
    //     height: height,
    //     wordSpacing: wordSpacing);
    return GoogleFonts.notoSerifMalayalam(
        fontSize: finalFontSize,
        fontWeight: _getFontWeight(fontWeight),
        letterSpacing: letterSpacing,
        color: finalColor,
        decoration: decoration,
        height: height,
        wordSpacing: wordSpacing);
  }

  static TextStyle getTextStyle(TextStyle? textStyle,
      {int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double letterSpacing = 0.15,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double wordSpacing = 0,
      double? fontSize}) {
    double? finalFontSize = fontSize ?? textStyle!.fontSize;

    Color? finalColor;
    if (color == null) {
      finalColor = xMuted
          ? textStyle!.color!.withAlpha(160)
          : (muted ? textStyle!.color!.withAlpha(200) : textStyle!.color);
    } else {
      finalColor = xMuted
          ? color.withAlpha(160)
          : (muted ? color.withAlpha(200) : color);
    }

    // return GoogleFonts.notoSansMalayalam(
    //     fontSize: finalFontSize,
    //     fontWeight: _getFontWeight(fontWeight),
    //     letterSpacing: letterSpacing,
    //     color: finalColor,
    //     decoration: decoration,
    //     height: height,
    //     wordSpacing: wordSpacing);
    return GoogleFonts.roboto(
        fontSize: finalFontSize,
        fontWeight: _getFontWeight(fontWeight),
        letterSpacing: letterSpacing,
        color: finalColor,
        decoration: decoration,
        height: height,
        wordSpacing: wordSpacing);
  }

  static final TextTheme lightTextTheme = TextTheme(
    displayLarge: GoogleFonts.notoSansMalayalam(
        textStyle: const TextStyle(fontSize: 102, color: Color(0xff4a4c4f))),
    displayMedium: GoogleFonts.notoSansMalayalam(
        textStyle: const TextStyle(fontSize: 64, color: Color(0xff4a4c4f))),
    displaySmall: GoogleFonts.notoSansMalayalam(
        textStyle: const TextStyle(fontSize: 51, color: Color(0xff4a4c4f))),
    headlineMedium: GoogleFonts.notoSansMalayalam(
        textStyle: const TextStyle(fontSize: 36, color: Color(0xff4a4c4f))),
    headlineSmall: GoogleFonts.notoSansMalayalam(
        textStyle: const TextStyle(fontSize: 25, color: Color(0xff4a4c4f))),
    titleLarge: GoogleFonts.notoSansMalayalam(
        textStyle: const TextStyle(fontSize: 18, color: Color(0xff4a4c4f))),
    titleMedium: GoogleFonts.notoSansMalayalam(
        textStyle: const TextStyle(fontSize: 17, color: Color(0xff4a4c4f))),
    titleSmall: GoogleFonts.notoSansMalayalam(
        textStyle: const TextStyle(fontSize: 15, color: Color(0xff4a4c4f))),
    bodyLarge: GoogleFonts.notoSansMalayalam(
        textStyle: const TextStyle(fontSize: 16, color: Color(0xff4a4c4f))),
    bodyMedium: GoogleFonts.notoSansMalayalam(
        textStyle: const TextStyle(fontSize: 14, color: Color(0xff4a4c4f))),
    labelLarge: GoogleFonts.notoSansMalayalam(
        textStyle: const TextStyle(fontSize: 15, color: Color(0xff4a4c4f))),
    bodySmall: GoogleFonts.notoSansMalayalam(
        textStyle: const TextStyle(fontSize: 13, color: Color(0xff4a4c4f))),
    labelSmall: GoogleFonts.notoSansMalayalam(
        textStyle: const TextStyle(fontSize: 11, color: Color(0xff4a4c4f))),
  );

  static final TextTheme darkTextTheme = TextTheme(
    displayLarge: GoogleFonts.notoSansMalayalam(
        textStyle: const TextStyle(fontSize: 102, color: Colors.white)),
    displayMedium: GoogleFonts.notoSansMalayalam(
        textStyle: const TextStyle(fontSize: 64, color: Colors.white)),
    displaySmall: GoogleFonts.notoSansMalayalam(
        textStyle: const TextStyle(fontSize: 51, color: Colors.white)),
    headlineMedium: GoogleFonts.notoSansMalayalam(
        textStyle: const TextStyle(fontSize: 36, color: Colors.white)),
    headlineSmall: GoogleFonts.notoSansMalayalam(
        textStyle: const TextStyle(fontSize: 25, color: Colors.white)),
    titleLarge: GoogleFonts.notoSansMalayalam(
        textStyle: const TextStyle(fontSize: 18, color: Colors.white)),
    titleMedium: GoogleFonts.notoSansMalayalam(
        textStyle: const TextStyle(fontSize: 17, color: Colors.white)),
    titleSmall: GoogleFonts.notoSansMalayalam(
        textStyle: const TextStyle(fontSize: 15, color: Colors.white)),
    bodyLarge: GoogleFonts.notoSansMalayalam(
        textStyle: const TextStyle(fontSize: 16, color: Colors.white)),
    bodyMedium: GoogleFonts.notoSansMalayalam(
        textStyle: const TextStyle(fontSize: 14, color: Colors.white)),
    labelLarge: GoogleFonts.notoSansMalayalam(
        textStyle: const TextStyle(fontSize: 15, color: Colors.white)),
    bodySmall: GoogleFonts.notoSansMalayalam(
        textStyle: const TextStyle(fontSize: 13, color: Colors.white)),
    labelSmall: GoogleFonts.notoSansMalayalam(
        textStyle: const TextStyle(fontSize: 11, color: Colors.white)),
  );

  static final ThemeData themeDataLight = ThemeData(
    brightness: Brightness.light,
    primaryColor: const Color(0xff2094F2),
    canvasColor: Colors.transparent,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
// textTheme: lightAppBarTextTheme,
      actionsIconTheme: IconThemeData(
        color: Colors.grey.shade800,
      ),
      backgroundColor: const Color(0xfff6f6f6),
      iconTheme: const IconThemeData(color: Color(0xff495057), size: 24),
    ),
    navigationRailTheme: const NavigationRailThemeData(
        selectedIconTheme:
            IconThemeData(color: Color(0xff2094F2), opacity: 1, size: 24),
        unselectedIconTheme:
            IconThemeData(color: Color(0xff495057), opacity: 1, size: 24),
        backgroundColor: Color(0xffffffff),
        elevation: 3,
        selectedLabelTextStyle: TextStyle(color: Color(0xff2094F2)),
        unselectedLabelTextStyle: TextStyle(color: Color(0xff495057))),
    cardTheme: CardTheme(
      color: Colors.white,
      shadowColor: Colors.black.withOpacity(0.4),
      elevation: 1,
      margin: const EdgeInsets.all(0),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      hintStyle: TextStyle(fontSize: 15, color: Color(0xaa495057)),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        borderSide: BorderSide(width: 1, color: Color(0xff2094F2)),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        borderSide: BorderSide(width: 1, color: Colors.black54),
      ),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(width: 1, color: Colors.black54)),
    ),
    splashColor: Colors.white.withAlpha(100),
    iconTheme: IconThemeData(
      color: Colors.grey.shade800,
    ),
    textTheme: lightTextTheme,
    indicatorColor: Colors.white,
    disabledColor: const Color(0xffdcc7ff),
    highlightColor: Colors.white,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: const Color(0xff2094F2),
        splashColor: Colors.white.withAlpha(100),
        highlightElevation: 8,
        elevation: 4,
        focusColor: const Color(0xff2094F2),
        hoverColor: const Color(0xff2094F2),
        foregroundColor: Colors.white),
    dividerColor: const Color(0xffd1d1d1),
    cardColor: Colors.white,
    popupMenuTheme: PopupMenuThemeData(
      color: const Color(0xffffffff),
      textStyle: lightTextTheme.bodyMedium!
          .merge(const TextStyle(color: Color(0xff495057))),
    ),
    bottomAppBarTheme:
        const BottomAppBarTheme(color: Color(0xffffffff), elevation: 0),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xff121212),
      unselectedItemColor: Color(0xff495057),
      selectedItemColor: Colors.white,
    ),
    tabBarTheme: const TabBarTheme(
      unselectedLabelColor: Color(0xff495057),
      labelColor: AppColors.white,
      indicatorSize: TabBarIndicatorSize.label,
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(color: Color(0XFF2A2A2A), width: 2.0),
      ),
    ),
    sliderTheme: SliderThemeData(
      activeTrackColor: const Color(0xff2094F2),
      inactiveTrackColor: const Color(0xff2094F2).withAlpha(140),
      trackShape: const RoundedRectSliderTrackShape(),
      trackHeight: 4.0,
      thumbColor: const Color(0xff2094F2),
      thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 10.0),
      overlayShape: const RoundSliderOverlayShape(overlayRadius: 24.0),
      tickMarkShape: const RoundSliderTickMarkShape(),
      inactiveTickMarkColor: Colors.red[100],
      valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
      valueIndicatorTextStyle: const TextStyle(
        color: Colors.white,
      ),
    ),
    colorScheme: const ColorScheme.light(
            primary: Color(0xff2094F2),
            onPrimary: Colors.white,
            secondary: Color(0xff495057),
            onSecondary: Colors.white,
            surface: Color(0xffe2e7f1),
            background: Color(0xfff3f4f7),
            onBackground: Color(0xff495057))
        .copyWith(secondary: const Color(0xff2094F2))
        .copyWith(background: Colors.white)
        .copyWith(error: const Color(0xfff0323c)),
  );

  static final ThemeData themeDataDark = ThemeData(
      brightness: Brightness.dark,
      canvasColor: Colors.transparent,
      primaryColor: const Color(0xff2094F2),
      scaffoldBackgroundColor: const Color(0xff121212),
      appBarTheme: const AppBarTheme(
        actionsIconTheme: IconThemeData(
          color: Color(0xffffffff),
        ),
        backgroundColor: Color(0xff121212),
        iconTheme: IconThemeData(color: Color(0xffffffff), size: 24),
      ),
      cardTheme: const CardTheme(
        color: Color(0xff37404a),
        shadowColor: Color(0xff000000),
        elevation: 1,
        margin: EdgeInsets.all(0),
      ),
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      textTheme: darkTextTheme,
      indicatorColor: Colors.white,
      disabledColor: const Color(0xffa3a3a3),
      highlightColor: Colors.white,
      inputDecorationTheme: const InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(width: 1, color: Color(0xff2094F2)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(width: 1, color: Colors.white70),
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: Colors.white70)),
      ),
      dividerColor: const Color(0xff363636),
      cardColor: const Color(0xff282a2b),
      splashColor: Colors.white.withAlpha(100),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: const Color(0xff2094F2),
          splashColor: Colors.white.withAlpha(100),
          highlightElevation: 8,
          elevation: 4,
          focusColor: const Color(0xff2094F2),
          hoverColor: const Color(0xff2094F2),
          foregroundColor: Colors.white),
      popupMenuTheme: PopupMenuThemeData(
        color: const Color(0xff37404a),
        textStyle: lightTextTheme.bodyMedium!
            .merge(const TextStyle(color: Color(0xffffffff))),
      ),
      bottomAppBarTheme:
          const BottomAppBarTheme(color: Color(0xff464c52), elevation: 0),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color(0xff121212),
        unselectedItemColor: Color(0xff495057),
        selectedItemColor: Colors.white,
      ),
      tabBarTheme: const TabBarTheme(
        unselectedLabelColor: Color(0xff495057),
        labelColor: AppColors.white,
        indicatorSize: TabBarIndicatorSize.label,
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(color: Color(0XFF2A2A2A), width: 2.0),
        ),
      ),
      sliderTheme: SliderThemeData(
        activeTrackColor: const Color(0xff2094F2),
        inactiveTrackColor: const Color(0xff2094F2).withAlpha(100),
        trackShape: const RoundedRectSliderTrackShape(),
        trackHeight: 4.0,
        thumbColor: const Color(0xff2094F2),
        thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 10.0),
        overlayShape: const RoundSliderOverlayShape(overlayRadius: 24.0),
        tickMarkShape: const RoundSliderTickMarkShape(),
        inactiveTickMarkColor: Colors.red[100],
        valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
        valueIndicatorTextStyle: const TextStyle(
          color: Colors.white,
        ),
      ),
      cupertinoOverrideTheme: const CupertinoThemeData(),
      colorScheme: const ColorScheme.dark(
        primary: Color(0xff2094F2),
        secondary: Color(0xff00cc77),
        background: Color(0xff343a40),
        onPrimary: Colors.white,
        onBackground: Colors.white,
        onSecondary: Colors.white,
        surface: Color(0xff585e63),
      )
          .copyWith(secondary: const Color(0xff2094F2))
          .copyWith(background: const Color(0xff121212))
          .copyWith(error: const Color(0xfff0323c)));
}

class AppColors {
  static const Color grey = Color(0XFF2A2A2A);
  static const Color color1 = Color(0XFFF4F4F4);
  static Color color2 = Colors.grey.shade700;
  // static const Color color2 = Color(0XFF2A2A2A);
  static const Color white = Colors.white;
  static const Color blue = Colors.blue;
  static const Color black = Colors.black;
  static const Color red = Colors.red;
  static const Color orange = Colors.orange;
  static Color lightGrey = Colors.grey.shade600;
}
