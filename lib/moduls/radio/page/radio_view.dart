
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/config/settings_provider.dart';
import 'package:provider/provider.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});


  @override
  Widget build(BuildContext context) {
    var theme=Theme.of(context);
    var provider=Provider.of<SettingsProvider>(context)!;
    return Center(
      child: Column(
        children: [
         const SizedBox(height: 110,),
          Image.asset("assets/images/radio.png",),
      const SizedBox(height: 50,),

      Text("إذاعة القرآن الكريم",style:theme.textTheme.bodyLarge,),
          const SizedBox(height: 40,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset( provider.isDark()? "assets/images/Icon metro-back_dark.png":"assets/images/Icon metro-back.png"),
              SizedBox(width: 60,),
              Image.asset( provider.isDark()? "assets/images/Icon_awesome-play_dark.png":"assets/images/Icon awesome-play.png"),
              SizedBox(width: 60,),
              Image.asset( provider.isDark()?"assets/images/Icon_metro_next_dark.png":"assets/images/Icon metro-next.png"),
            ],
          ),

        ],
      ),
    );
  }
}
