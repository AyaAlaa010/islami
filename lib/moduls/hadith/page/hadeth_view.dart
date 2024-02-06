import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HadethView extends StatelessWidget {
  const HadethView({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery=MediaQuery.of(context).size;
    var theme=Theme.of(context);

    return  Column(
      children: [
        Image.asset("assets/images/hadeth_header.png",height: mediaQuery.height*0.2,),
        const Divider(),
       Text("الأحاديث",style: theme.textTheme.bodyLarge,),
        const Divider(),
        Expanded(child: ListView.builder(itemBuilder: (context,index){

          return Text(" الحديث الأول ", style: theme.textTheme.bodyMedium,textAlign: TextAlign.center,);

        },itemCount: 40,))




      ],

    );
  }
}
