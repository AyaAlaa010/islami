import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../config/settings_provider.dart';

class TasbihView extends StatefulWidget {
  TasbihView({super.key});

  @override
  State<TasbihView> createState() => _TasbihViewState();
}

class _TasbihViewState extends State<TasbihView> with SingleTickerProviderStateMixin {
  List<String> tasbihWords = [
    "سبحان الله ",
    "الحمد لله ",
    "لا اله الا الله",
    "الله أكبر"
  ];
  static int tasbihIndex = 0;
  static int count = 0;
  late AnimationController _controller;


  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var provider=Provider.of<SettingsProvider>(context)!;

    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.only(top: 72),
                  child: Column(
                    children: [
                      RotationTransition(
                        turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
                        child: GestureDetector(
                            onTap: () {
                              setState(() {
                                makeRotate();
                              });
                            },
                            child: Image.asset(
                              provider.isDark()? "assets/images/body_of_dark_seb7a.png" :
                              "assets/images/body_of_seb7a.png"
                            )),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "عدد التسبيحات",
                        style: theme.textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
                Image.asset( provider.isDark()?"assets/images/head_of_dark_seb7a.png":"assets/images/head_of_seb7a.png"),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color:provider.isDark()?const Color(0XFF141A2E).withOpacity(0.8): const Color(0XFFB7935F).withOpacity(0.57) //#B7935F
                    ),
                child: Center(
                    child: Text(
                  "$count",
                  style:  provider.isDark()?  theme.textTheme.bodyMedium!.copyWith(color: Colors.white):theme.textTheme.bodyMedium!,
                ))),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  makeRotate();
                });
              },
              child: Text(
                "${tasbihWords[tasbihIndex]}",
                style: provider.isDark()? theme.textTheme.bodyMedium!.copyWith(color: Color(0XFF0F1424)): theme.textTheme.bodyMedium!.copyWith(color:Colors.white),
                textAlign: TextAlign.center,
              ),
              style: TextButton.styleFrom(
                  backgroundColor:provider.isDark()?  Color(0XFFFACC1D): Color(0XFFB7935F),
                  padding: EdgeInsetsDirectional.symmetric(
                      horizontal: 8, vertical: 3)),
            )
          ],
        ),
      ),
    );
  }

  void makeRotate() {
    _controller.forward(from: 0.0); // it starts the animation
    if (count < 33) {
      count++;
    } else {
      if (tasbihIndex < tasbihWords.length - 1) {
        count = 0;
        tasbihIndex++;
      } else {
        tasbihIndex = 0;
        count = 0;
      }
    }
    setState(() {});
  }
}
