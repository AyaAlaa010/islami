import 'package:flutter/material.dart';
import 'package:islami/config/application_theme_manager.dart';
import 'package:islami/layout/layout_view.dart';
import 'package:islami/moduls/hadeth/page/hadeth_details_view.dart';
import 'package:islami/moduls/quraan/page/quran_details_view.dart';
import 'package:islami/moduls/quraan/widget/quran_title_wedgit.dart';
import 'package:islami/moduls/splash/page/splash_view.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp( MyApplication());
}
class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],locale:Locale("en"),//select the language
       initialRoute:SplashView.routeName ,
      theme: ApplicationThemeManager.lightTheme,
      routes: {
        SplashView.routeName:(context)=>SplashView(),
        LayoutView.routeName:(context)=>LayoutView(),
        QuranDetailsView.routeName:(context)=>QuranDetailsView(),
        HadethDetailsView.routeName:(context)=>HadethDetailsView()
      },

    );
  }
}

