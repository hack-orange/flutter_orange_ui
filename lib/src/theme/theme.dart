
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show SystemUiOverlayStyle;

import '../colors/orange_colors.dart';

/// Generate Adwaita light and dark theme.
class OrangeThemeData {
  const OrangeThemeData._();
  ///primary基础色
  ///accent 重要
  ///card 卡片
  ///backgroundColor 背景色
  ///errorColor 错误色
  ///浅色调
  static final _lightColorScheme = ColorScheme.fromSwatch(
    // NOTE(robert-ancell): Light shades from 'Tint' on website, dark shades
    // calculated.
    primarySwatch: OrangeColors.primarySwatchColor,
    primaryColorDark: OrangeColors.darkBackgroundColor,
    accentColor: OrangeColors.blueAccent,
    cardColor: OrangeColors.cardBackground,
    backgroundColor: OrangeColors.backgroundColor,
    errorColor: OrangeColors.red5,
  );
  ///深色调
  static final _darkColorScheme = ColorScheme.fromSwatch(
    // NOTE(robert-ancell): Light shades from 'Tint' on website, dark shades
    // calculated.
    primarySwatch: OrangeColors.primarySwatchColor,
    primaryColorDark: OrangeColors.darkBackgroundColor,
    accentColor: OrangeColors.blueAccent,
    cardColor: OrangeColors.darkCardBackground,
    backgroundColor: OrangeColors.darkBackgroundColor,
    errorColor: OrangeColors.red5,
    brightness: Brightness.dark,
  );
  ///弹框
  static ShapeBorder getDialogShape([Color color = Colors.white]) =>
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
        side: BorderSide(color: color.withOpacity(0.2)),
      );
  ///文本样式，参数是轻色还是深颜色，如果是浅色，文本就用黑色的，如果是深色的，文本用白色的
  static TextTheme getTextTheme([Brightness brightness = Brightness.light]) {
    final color = brightness == Brightness.light ? Colors.black : Colors.white;
    return TextTheme(
      headline1: TextStyle(
        fontSize: 26,
        color: color,
        fontWeight: FontWeight.bold,
      ),
      headline2: TextStyle(
        fontSize: 21,
        color: color,
        fontWeight: FontWeight.bold,
      ),
      headline3: TextStyle(
        fontSize: 20,
        color: color,
        fontWeight: FontWeight.bold,
      ),
      headline4: TextStyle(
        fontSize: 17,
        color: color,
        fontWeight: FontWeight.bold,
      ),
      headline5: TextStyle(
        fontSize: 15,
        color: color,
        fontWeight: FontWeight.bold,
      ),
      headline6: TextStyle(
        fontSize: 13,
        color: color,
        fontWeight: FontWeight.w600,
      ),
      bodyText1: TextStyle(
        fontSize: 15,
        color: color,
      ),
      caption: TextStyle(
        fontSize: 13,
        color: color,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  /// A default light theme.默认的浅色主题
  static ThemeData light({String? fontFamily}) => ThemeData(
    fontFamily: fontFamily,
    tabBarTheme: TabBarTheme(labelColor: _lightColorScheme.onSurface),
    brightness: Brightness.light,
    splashFactory: NoSplash.splashFactory,
    primaryColor: _lightColorScheme.primary,
    canvasColor: _lightColorScheme.background,
    scaffoldBackgroundColor: _lightColorScheme.background,
    bottomAppBarColor: _lightColorScheme.surface,
    cardColor: _lightColorScheme.surface,
    dividerColor: _lightColorScheme.onSurface.withOpacity(0.12),
    backgroundColor: _lightColorScheme.background,
    dialogBackgroundColor: _lightColorScheme.background,
    dialogTheme: DialogTheme(
      backgroundColor: _lightColorScheme.background,
      shape: getDialogShape(Colors.black),
    ),
    textTheme: getTextTheme(),
    errorColor: _lightColorScheme.error,
    indicatorColor: _lightColorScheme.secondary,
    applyElevationOverlayColor: false,
    colorScheme: _lightColorScheme, ///颜色方案
    buttonTheme: _buttonThemeData,
    elevatedButtonTheme: _getElevatedButtonThemeData(Brightness.light),
    outlinedButtonTheme: _outlinedButtonThemeData,
    textButtonTheme: _textButtonThemeData,
    switchTheme: _switchStyleLight,
    checkboxTheme: _checkStyleLight,
    radioTheme: _radioStyleLight,
    appBarTheme: _appBarLightTheme,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: OrangeColors.blueAccent,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: _lightColorScheme.primary,
      unselectedItemColor: OrangeColors.dark3,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: OrangeColors.button,
      enabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        borderSide: BorderSide(color: Colors.transparent),
      ),
      focusedBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
        borderSide: BorderSide(
          color: OrangeColors.blueAccent,
        ),
      ),
    ),
  );

  /// A default dark theme.深色主题
  static ThemeData dark({String? fontFamily}) => ThemeData(
    fontFamily: fontFamily,
    tabBarTheme: TabBarTheme(labelColor: _darkColorScheme.onBackground),
    brightness: Brightness.dark,
    splashFactory: NoSplash.splashFactory,
    primaryColor: _darkColorScheme.primary,
    canvasColor: _darkColorScheme.background,
    scaffoldBackgroundColor: _darkColorScheme.background,
    bottomAppBarColor: _darkColorScheme.surface,
    cardColor: _darkColorScheme.surface,
    dividerColor: _darkColorScheme.onSurface.withOpacity(0.12),
    backgroundColor: _darkColorScheme.background,
    dialogBackgroundColor: _darkColorScheme.background,
    dialogTheme: DialogTheme(
      backgroundColor: _darkColorScheme.background,
      shape: getDialogShape(),
    ),
    textTheme: getTextTheme(Brightness.dark),
    errorColor: _darkColorScheme.error,
    indicatorColor: _darkColorScheme.secondary,
    applyElevationOverlayColor: true,
    colorScheme: _darkColorScheme,
    buttonTheme: _buttonThemeData,
    textButtonTheme: _darkTextButtonThemeData,
    elevatedButtonTheme: _getElevatedButtonThemeData(Brightness.dark),
    outlinedButtonTheme: _darkOutlinedButtonThemeData,
    switchTheme: _switchStyleDark,
    checkboxTheme: _checkStyleDark,
    radioTheme: _radioStyleDark,
    primaryColorDark: OrangeColors.blueAccent,
    appBarTheme: _appBarDarkTheme,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: OrangeColors.blueAccent,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: _darkColorScheme.primary,
      unselectedItemColor: OrangeColors.warmGrey.shade300,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: OrangeColors.darkButton,
      enabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        borderSide: BorderSide(color: Colors.transparent),
      ),
      focusedBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
        borderSide: BorderSide(color: OrangeColors.blueAccent),
      ),
    ),
  );

  // Special casing some widgets to get the desired Adwaita look
  // Buttons
  ///通用按钮样式
  static final _commonButtonStyle = ButtonStyle(
    visualDensity: VisualDensity.standard,
    backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) {
      if (states.contains(MaterialState.pressed)) {
        return OrangeColors.light4;
      }
      return OrangeColors.light2; // Use the component's default.
    }),
  );
  ///深色通用按钮样式
  static final _darkCommonButtonStyle = ButtonStyle(
    visualDensity: VisualDensity.standard,
    backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) {
      if (states.contains(MaterialState.pressed)) {
        return OrangeColors.dark5;
      }
      return OrangeColors.dark2; // Use the component's default.
    }),
  );

  static final _buttonThemeData = ButtonThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
    ),
  );

  static final _outlinedButtonThemeData = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: OrangeColors.dark4,
      visualDensity: _commonButtonStyle.visualDensity,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
    ),
  );

  static final _darkOutlinedButtonThemeData = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: Colors.white,
      visualDensity: _commonButtonStyle.visualDensity,
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        side: BorderSide(color: Colors.black.withOpacity(0.75)),
      ),
    ),
  );

  static final _textButtonThemeData = TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: OrangeColors.dark4, visualDensity: _commonButtonStyle.visualDensity,
      backgroundColor: OrangeColors.button,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        side: BorderSide(color: Colors.transparent),
      ),
    ),
  );

  static final _darkTextButtonThemeData = TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: Colors.white,
      visualDensity: _darkCommonButtonStyle.visualDensity,
      backgroundColor: OrangeColors.darkButton,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        side: BorderSide(color: Colors.transparent),
      ),
    ),
  );

  static ElevatedButtonThemeData _getElevatedButtonThemeData(
      Brightness brightness,
      ) {
    if (brightness == Brightness.light) {
      return ElevatedButtonThemeData(style: _commonButtonStyle);
    }
    return ElevatedButtonThemeData(style: _darkCommonButtonStyle);
  }

// Switches
  static Color _getSwitchThumbColorDark(Set<MaterialState> states) {
    if (states.contains(MaterialState.disabled)) {
      return OrangeColors.dark2;
    } else {
      if (states.contains(MaterialState.selected)) {
        return OrangeColors.blueAccent;
      } else {
        return OrangeColors.warmGrey;
      }
    }
  }

  static Color _getSwitchTrackColorDark(Set<MaterialState> states) {
    if (states.contains(MaterialState.disabled)) {
      return OrangeColors.dark2.withAlpha(120);
    } else {
      if (states.contains(MaterialState.selected)) {
        return OrangeColors.blueAccent.withAlpha(160);
      } else {
        return OrangeColors.warmGrey.withAlpha(80);
      }
    }
  }

  static final _switchStyleDark = SwitchThemeData(
    thumbColor: MaterialStateProperty.resolveWith(_getSwitchThumbColorDark),
    trackColor: MaterialStateProperty.resolveWith(_getSwitchTrackColorDark),
  );

  static Color _getSwitchThumbColorLight(Set<MaterialState> states) {
    if (states.contains(MaterialState.disabled)) {
      return OrangeColors.warmGrey.shade200;
    } else {
      if (states.contains(MaterialState.selected)) {
        return OrangeColors.blueAccent;
      } else {
        return Colors.white;
      }
    }
  }

  static Color _getSwitchTrackColorLight(Set<MaterialState> states) {
    if (states.contains(MaterialState.disabled)) {
      return OrangeColors.warmGrey.shade200;
    } else {
      if (states.contains(MaterialState.selected)) {
        return OrangeColors.blueAccent.withAlpha(180);
      } else {
        return OrangeColors.warmGrey.shade300;
      }
    }
  }

  static final _switchStyleLight = SwitchThemeData(
    thumbColor: MaterialStateProperty.resolveWith(_getSwitchThumbColorLight),
    trackColor: MaterialStateProperty.resolveWith(_getSwitchTrackColorLight),
  );

// Checks
  static Color _getCheckFillColorDark(Set<MaterialState> states) {
    if (!states.contains(MaterialState.disabled)) {
      if (states.contains(MaterialState.selected)) {
        return OrangeColors.blueAccent;
      }
      return OrangeColors.warmGrey.shade400;
    }
    return OrangeColors.warmGrey.withOpacity(0.4);
  }

  static Color _getCheckColorDark(Set<MaterialState> states) {
    if (!states.contains(MaterialState.disabled)) {
      return Colors.white;
    }
    return OrangeColors.warmGrey;
  }

  static final _checkStyleDark = CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(2),
    ),
    fillColor: MaterialStateProperty.resolveWith(_getCheckFillColorDark),
    checkColor: MaterialStateProperty.resolveWith(_getCheckColorDark),
  );

  static Color _getCheckFillColorLight(Set<MaterialState> states) {
    if (!states.contains(MaterialState.disabled)) {
      if (states.contains(MaterialState.selected)) {
        return OrangeColors.blueAccent;
      }
      return OrangeColors.warmGrey;
    }
    return OrangeColors.warmGrey.shade300;
  }

  static Color _getCheckColorLight(Set<MaterialState> states) {
    if (!states.contains(MaterialState.disabled)) {
      return Colors.white;
    }
    return OrangeColors.warmGrey;
  }

  static final _checkStyleLight = CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(2),
    ),
    fillColor: MaterialStateProperty.resolveWith(_getCheckFillColorLight),
    checkColor: MaterialStateProperty.resolveWith(_getCheckColorLight),
  );

  // Radios 单选样式
  static final _radioStyleDark = RadioThemeData(
    fillColor: MaterialStateProperty.resolveWith(_getCheckFillColorDark),
  );

  static final _radioStyleLight = RadioThemeData(
    fillColor: MaterialStateProperty.resolveWith(_getCheckFillColorLight),
  );

  static final _appBarLightTheme = AppBarTheme(
    elevation: 1,
    titleTextStyle: getTextTheme().headline5,
    systemOverlayStyle: SystemUiOverlayStyle.light,
    backgroundColor: OrangeColors.headerBarBackground,
    foregroundColor: OrangeColors.headerBarForeground,
    iconTheme: const IconThemeData(color: OrangeColors.dark3),
    actionsIconTheme: const IconThemeData(color: OrangeColors.dark3),
  );
  ///appbar的样式
  static final _appBarDarkTheme = AppBarTheme(
    elevation: 1,
    titleTextStyle: getTextTheme(Brightness.dark).headline5,
    systemOverlayStyle: SystemUiOverlayStyle.dark,
    backgroundColor: OrangeColors.darkHeaderBarBackground,
    foregroundColor: OrangeColors.darkHeaderBarForeground,
  );
}