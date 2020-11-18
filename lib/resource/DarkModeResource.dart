class DarkModeResource {
  Future<bool> isDarkMode(needToChange, {isDark}) async {
    return needToChange ? isDark : isDark = !isDark;
  }
}
