import 'package:flutter/material.dart';
import 'package:islami/config/application_theme_manager.dart';
import 'package:islami/layout/layout_view.dart';
import 'package:islami/moduls/splash/page/splash_view.dart';


void main() {
  runApp( MyApplication());
}
class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       initialRoute:SplashView.routeName ,
      theme: ApplicationThemeManager.lightTheme,
      routes: {
        SplashView.routeName:(context)=>SplashView(),
        LayoutView.routeName:(context)=>LayoutView(),
      },

    );
  }
}

