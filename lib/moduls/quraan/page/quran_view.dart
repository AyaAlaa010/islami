import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/moduls/quraan/widget/quran_title_wedgit.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});

  @override
  Widget build(BuildContext context) {

    var mediaQuery=MediaQuery.of(context).size;
    var theme=Theme.of(context);
    return Column(
      children: [
        Image.asset("assets/images/quran_header.png" ,height: mediaQuery.height*0.2,),
       const Divider(),
        Row(
          children: [
            Expanded(
              child:Text("رقم السوره",style: theme.textTheme.bodyLarge,textAlign: TextAlign.center,) ,
            ),
            Container(color:theme.primaryColor ,height: 38,width: 1.5,),
            Expanded(
              child:Text("اسم الصوره",style: theme.textTheme.bodyLarge,textAlign: TextAlign.center,) ,
            ),
          ],

        ),
        const Divider()
        ,
        Expanded(
            child: ListView.builder(itemBuilder: (context,index){
          return QuranTitleWidget();
        },itemCount: 40,

        ))
        





      ],

    );
  }
}
