import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/moduls/hadith/page/hadeth_view.dart';
import 'package:islami/moduls/quraan/page/quran_view.dart';
import 'package:islami/moduls/radio/page/radio_view.dart';
import 'package:islami/moduls/settings/page/settings_view.dart';
import 'package:islami/moduls/tasbih/page/tasbih_view.dart';

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


    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Image.asset("assets/images/main_background.png",fit:BoxFit.cover ,width: mediaQuery.width,
            height: mediaQuery.height,).image
        )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("إسلامي"),
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
            BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/quran_icn.png")) ,label: "Quran"),
            BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/hadeth_icn.png")) ,label: "Hadeth"),
            BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/sebha_icn.png")) ,label: "Tasbih"),
            BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/radio_icn.png")) ,label: "Radio"),
            BottomNavigationBarItem(icon:Icon(Icons.settings) ,label: "Settings"),

          ],

        ),

      ),
    );
  }
}
