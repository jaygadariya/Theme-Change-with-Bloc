import 'package:black_mode/resource/DarkModeResource.dart';

class Repository {
  final darkModeResource = DarkModeResource();

  Future<bool> darkMode(isDark, needToChange) => darkModeResource.isDarkMode(
        needToChange,
        isDark: isDark,
      );
}
