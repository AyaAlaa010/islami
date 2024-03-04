import 'package:flutter/material.dart';
import 'package:islami/config/application_theme_manager.dart';
import 'package:islami/config/settings_provider.dart';
import 'package:islami/layout/layout_view.dart';
import 'package:islami/moduls/hadeth/page/hadeth_details_view.dart';
import 'package:islami/moduls/quraan/page/quran_details_view.dart';
import 'package:islami/moduls/splash/page/splash_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
  ChangeNotifierProvider(
    create: (context)=>SettingsProvider()..getLanguage()..getThemeMode(),
     child: const MyApplication())
  );
}
class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<SettingsProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales:const [
         Locale('en'), // English
        Locale('ar'), // Arabic
      ],locale:Locale(provider.currentLanguage),//select the language
       initialRoute:SplashView.routeName ,
      theme: ApplicationThemeManager.lightTheme,
      darkTheme: ApplicationThemeManager.darkTheme,
      themeMode: provider.currentThemeMode,
      routes: {
        SplashView.routeName:(context)=>SplashView(),
        LayoutView.routeName:(context)=>LayoutView(),
        QuranDetailsView.routeName:(context)=>QuranDetailsView(),
        HadethDetailsView.routeName:(context)=>HadethDetailsView()
      },

    );
  }
}

