import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/moduls/quraan/page/quran_view.dart';
import 'package:provider/provider.dart';

import '../../../config/settings_provider.dart';

class QuranDetailsView extends StatefulWidget {
  static String routeName = "QuranDetails";
  QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  String content="";

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var args=ModalRoute.of(context)?.settings.arguments as SuraDetails ;
    var theme = Theme.of(context);
    var provider=Provider.of<SettingsProvider>(context)!;

    if(content.isEmpty) loadData(args.suraNumber);

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image:  Image.asset(
       provider.getBackGround(),
        height: mediaQuery.height,
        width: mediaQuery.width,
        fit: BoxFit.cover,
      ).image)),
      child: Scaffold(
        appBar: AppBar(
          title:const  Text("إسلامي"),
        ),
        body: Container(
          padding: const EdgeInsetsDirectional.symmetric(vertical: 20,horizontal: 15),
          height: mediaQuery.height,
          width: mediaQuery.width,
          decoration: BoxDecoration(
              color: const Color(0XFFF8F8F8).withOpacity(.8),
              borderRadius: BorderRadius.circular(10)),
          margin:const  EdgeInsetsDirectional.only(
              start: 20, end: 20, top: 15, bottom: 60),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    " سورة ${args.suraName}  ",
                    style: theme.textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.play_circle_rounded,
                    size: 28,
                  )
                ],
              ),
              const Divider(indent: 30, endIndent: 30),
              Expanded(
                child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Text(content, style: theme.textTheme.bodySmall!.copyWith(height: 1.6),textAlign: TextAlign.center,)
                ),
              )

            ],
          ),
        ),
      ),
    );
  }



  Future <void> loadData(int fileName) async {
     content =await rootBundle.loadString("assets/files/quran/${fileName.toString()}.txt");
    setState(() {

     }

     );
  }
}


