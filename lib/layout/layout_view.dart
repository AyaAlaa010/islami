import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/config/settings_provider.dart';
import 'package:islami/moduls/hadeth/page/hadeth_view.dart';
import 'package:islami/moduls/quraan/page/quran_view.dart';
import 'package:islami/moduls/radio/page/radio_view.dart';
import 'package:islami/moduls/settings/page/settings_view.dart';
import 'package:islami/moduls/tasbih/page/tasbih_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class LayoutView extends StatefulWidget {
  static const String routeName="LayoutView";
  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int currentIndex = 0;
  List <Widget> screens=[
    QuranView(),
    HadethView(),
    TasbihView(),
    RadioView(),
    SettingsView()
  ];

  @override
  Widget build(BuildContext context) {
    var mediaQuery=MediaQuery.of(context).size;
    var locale=AppLocalizations.of(context)!;
    var provider=Provider.of<SettingsProvider>(context);

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Image.asset(provider.getBackGround(),fit:BoxFit.cover ,width: mediaQuery.width,
            height: mediaQuery.height,).image
        )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(locale.islami,),
        ),
        body: screens[currentIndex],

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index){
            setState(() {
              currentIndex=index;
                         });
          },
          items: [
            BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/quran_icn.png")) ,label: locale.quran),
            BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/hadeth_icn.png")) ,label: locale.hadeth),
            BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/sebha_icn.png")) ,label: locale.tasbih),
            BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/radio_icn.png")) ,label: locale.radio),
            BottomNavigationBarItem(icon:Icon(Icons.settings) ,label: locale.settings),

          ],

        ),

      ),
    );
  }
}
