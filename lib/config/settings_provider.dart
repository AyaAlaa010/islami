import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier{
  String currentLanguage="en";
  ThemeMode currentThemeMode=ThemeMode.light;

  changeLanguage(String newLanguage){
    if(currentLanguage==newLanguage) return ;
    else{
      currentLanguage=newLanguage;
    }
    notifyListeners();
  }

 changeThemeMode(ThemeMode newThemeMode){
    if(currentThemeMode==newThemeMode) return;
    currentThemeMode=newThemeMode;
    notifyListeners();
 }

  getBackGround(){
    if(currentThemeMode==ThemeMode.light) return "assets/images/main_background.png";
    else
      if(currentThemeMode==ThemeMode.dark) return "assets/images/main_background_dark.png";
 }
  isDark()=>currentThemeMode==ThemeMode.dark;
}