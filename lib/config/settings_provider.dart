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



}