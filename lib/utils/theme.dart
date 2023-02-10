import 'package:flutter/material.dart';

darkTheme() {
  return ThemeData(
    colorScheme: darkColorScheme,
    useMaterial3: true,
  );
}

lightTheme() {
  return ThemeData(
    colorScheme: lightColorScheme,
    useMaterial3: true,
  );
}

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF9C4236),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFFFDAD5),
  onPrimaryContainer: Color(0xFF410000),
  secondary: Color(0xFF775651),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFFFDAD5),
  onSecondaryContainer: Color(0xFF2C1512),
  tertiary: Color(0xFF705C2E),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFFCDFA6),
  onTertiaryContainer: Color(0xFF251A00),
  error: Color(0xFFBA1A1A),
  errorContainer: Color(0xFFFFDAD6),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002),
  background: Color(0xFFFFFBFF),
  onBackground: Color(0xFF201A19),
  surface: Color(0xFFFFFBFF),
  onSurface: Color(0xFF201A19),
  surfaceVariant: Color(0xFFF5DDDA),
  onSurfaceVariant: Color(0xFF534341),
  outline: Color(0xFF857370),
  onInverseSurface: Color(0xFFFBEEEC),
  inverseSurface: Color(0xFF362F2E),
  inversePrimary: Color(0xFFFFB4A8),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF9C4236),
  outlineVariant: Color(0xFFD8C2BE),
  scrim: Color(0xFF000000),
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFFFB4A8),
  onPrimary: Color(0xFF5F150D),
  primaryContainer: Color(0xFF7D2B21),
  onPrimaryContainer: Color(0xFFFFDAD5),
  secondary: Color(0xFFE7BDB6),
  onSecondary: Color(0xFF442925),
  secondaryContainer: Color(0xFF5D3F3B),
  onSecondaryContainer: Color(0xFFFFDAD5),
  tertiary: Color(0xFFDEC38C),
  onTertiary: Color(0xFF3E2E04),
  tertiaryContainer: Color(0xFF564419),
  onTertiaryContainer: Color(0xFFFCDFA6),
  error: Color(0xFFFFB4AB),
  errorContainer: Color(0xFF93000A),
  onError: Color(0xFF690005),
  onErrorContainer: Color(0xFFFFDAD6),
  background: Color(0xFF201A19),
  onBackground: Color(0xFFEDE0DE),
  surface: Color(0xFF201A19),
  onSurface: Color(0xFFEDE0DE),
  surfaceVariant: Color(0xFF534341),
  onSurfaceVariant: Color(0xFFD8C2BE),
  outline: Color(0xFFA08C89),
  onInverseSurface: Color(0xFF201A19),
  inverseSurface: Color(0xFFEDE0DE),
  inversePrimary: Color(0xFF9C4236),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFFFFB4A8),
  outlineVariant: Color(0xFF534341),
  scrim: Color(0xFF000000),
);
