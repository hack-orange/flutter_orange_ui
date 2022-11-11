import 'package:flutter/material.dart' show Color, MaterialColor;

class OrangeColors{
  const OrangeColors._();

  ///Default accent color
  static const Color blueAccent = Color(0xFF4a86cf);

  ///Blue shades
  static const Color blue1 = Color(0xFF99C1F1);
  static const Color blue2 = Color(0xFF62a0ea);
  static const Color blue3 = Color(0xFF3584e4);
  static const Color blue4 = Color(0xFF1c71d8);
  static const Color blue5 = Color(0xFF1a5fb4);

  ///Green shades
  static const Color green1 = Color(0xFF8ff0a4);
  static const Color green2 = Color(0xFF57e389);
  static const Color green3 = Color(0xFF33d17a);
  static const Color green4 = Color(0xFF2ec27e);
  static const Color green5 = Color(0xFF26a269);

  ///Yellow shades
  static const Color yellow1 = Color(0xFFf9f06b);
  static const Color yellow2 = Color(0xFFf8e45c);
  static const Color yellow3 = Color(0xFFf6d32d);
  static const Color yellow4 = Color(0xFFf5c211);
  static const Color yellow5 = Color(0xFFe5a50a);

  ///Orange shades
  static const Color orange1 = Color(0xFFffbe6f);
  static const Color orange2 = Color(0xFFffa348);
  static const Color orange3 = Color(0xFFff7800);
  static const Color orange4 = Color(0xFFe66100);
  static const Color orange5 = Color(0xFFc64600);

  ///Red shades
  static const Color red1 = Color(0xFFf66151);
  static const Color red2 = Color(0xFFed333b);
  static const Color red3 = Color(0xFFe01b24);
  static const Color red4 = Color(0xFFc01c28);
  static const Color red5 = Color(0xFFa51d2d);

  ///Purple shades
  static const Color purple1 = Color(0xFFdc8add);
  static const Color purple2 = Color(0xFFc061cb);
  static const Color purple3 = Color(0xFF9141ac);
  static const Color purple4 = Color(0xFF813d9c);
  static const Color purple5 = Color(0xFF613583);

  ///Brown shades
  static const Color brown1 = Color(0xFFcdab8f);
  static const Color brown2 = Color(0xFFb5835a);
  static const Color brown3 = Color(0xFF986a44);
  static const Color brown4 = Color(0xFF865e3c);
  static const Color brown5 = Color(0xFF63452c);

  ///Light shades
  static const Color light1 = Color(0xFFffffff);
  static const Color light2 = Color(0xFFf6f5f4);
  static const Color light3 = Color(0xFFdeddda);
  static const Color light4 = Color(0xFFc0bfbc);
  static const Color light5 = Color(0xFF9a9996);

  ///Dark shades
  static const Color dark1 = Color(0xFF77767b);
  static const Color dark2 = Color(0xFF5e5c64);
  static const Color dark3 = Color(0xFF3d3846);
  static const Color dark4 = Color(0xFF241f31);
  static const Color dark5 = Color(0xFF000000);

  // Defined in https://gitlab.gnome.org/GNOME/libadwaita/-/blob/main/src/stylesheet/_defaults.scss
  ///Background color
  static const Color backgroundColor = Color(0xFFfafafa);

  ///Background dark color
  static const Color darkBackgroundColor = Color(0xFF242424);

  ///Card background color
  static const Color cardBackground = Color(0xFFFFFFFF);

  ///Card dark background color
  static const Color darkCardBackground = Color(0xFF383838);

  ///Header bar background color
  static const Color headerBarBackground = Color(0xFFebebeb);

  ///Header bar foreground color
  static const Color headerBarForeground = Color(0x52000000);

  ///Header bar dark background color
  static const Color darkHeaderBarBackground = Color(0xFF303030);

  ///Header bar dark foreground color
  static const Color darkHeaderBarForeground = Color(0xFFFFFFFF);

  ///view foreground color
  static const Color viewForeground = Color(0xFF000000);

  ///View dark color
  static const Color darkViewForeground = Color(0xFFffffff);

  ///Button color
  static Color button = viewForeground.withAlpha(25);

  ///Button dark color
  static Color darkButton = darkViewForeground.withAlpha(25);

  ///Border color
  static Color border = dark5.withOpacity(0.18);

  ///Button dark color
  static Color darkBorder = dark5.withOpacity(0.75); ///透明度为0.75的颜色
  ///创建材质设计的颜色
  static MaterialColor _createMaterialColor(Color color) {
    final strengths = <double>[.05];
    final swatch = <int, Color>{};
    final r = color.red, g = color.green, b = color.blue;

    for (var i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (final strength in strengths) {
      final ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(color.value, swatch);
  }

  /// Default accent swatch color
  static MaterialColor primarySwatchColor = _createMaterialColor(blueAccent);

  /// Adwaita grey swatch color
  static MaterialColor warmGrey = _createMaterialColor(light4);
}