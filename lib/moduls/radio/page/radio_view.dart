
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});


  @override
  Widget build(BuildContext context) {
    var theme=Theme.of(context);
    var meediaQuery=MediaQuery.of(context).size;
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
              Image.asset("assets/images/Icon metro-back.png"),
              SizedBox(width: 60,),
              Image.asset("assets/images/Icon awesome-play.png"),
              SizedBox(width: 60,),
              Image.asset("assets/images/Icon metro-next.png"),
            ],
          ),

        ],
      ),
    );
  }
}
