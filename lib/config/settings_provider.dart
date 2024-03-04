import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/config/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvider extends ChangeNotifier {
  String currentLanguage = "en";
  ThemeMode currentThemeMode = ThemeMode.light;

  Future<SharedPreferences> getSharedPrefInstance() async {
    return await SharedPreferences.getInstance();
  }

  Future<void> getLanguage() async {
    var sharedPref = await getSharedPrefInstance();
    currentLanguage = sharedPref.getString(LANGUAGE_KEY_PREF) ?? "en";
    notifyListeners();
  }

  Future<void> getThemeMode() async {
    var sharedPref = await getSharedPrefInstance();
    if (sharedPref.getString(THEME_KEY_PREF) != null) {
      currentThemeMode = sharedPref.getString(THEME_KEY_PREF) == LIGHT
          ? ThemeMode.light
          : ThemeMode.dark;
    } else {
      currentThemeMode = ThemeMode.light;
    }
    notifyListeners();
  }

  Future<void> changeLanguage(String newLanguage) async {
    if (currentLanguage == newLanguage)
      return;
    else {
      var sharedPref = await getSharedPrefInstance();
      sharedPref.setString(LANGUAGE_KEY_PREF, newLanguage);
      currentLanguage = newLanguage;
    }
    notifyListeners();
  }

  Future<void> changeThemeMode(ThemeMode newThemeMode) async {
    if (currentThemeMode == newThemeMode) return;
    var sharedPref = await getSharedPrefInstance();
    String value = newThemeMode == ThemeMode.light ? LIGHT : DARK;
    sharedPref.setString(THEME_KEY_PREF, value);
    currentThemeMode = newThemeMode;
    notifyListeners();
  }

  getBackGround() {
    if (currentThemeMode == ThemeMode.light)
      return "assets/images/main_background.png";
    else if (currentThemeMode == ThemeMode.dark)
      return "assets/images/main_background_dark.png";
  }

  isDark() => currentThemeMode == ThemeMode.dark;
}
