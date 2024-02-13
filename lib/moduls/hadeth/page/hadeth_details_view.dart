import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/config/settings_provider.dart';
import 'package:islami/moduls/hadeth/page/hadeth_view.dart';
import 'package:provider/provider.dart';

class HadethDetailsView extends StatelessWidget {
  static String routeName="HadethDetailsView";
  HadethDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as HadethDetails;
    var provider=Provider.of<SettingsProvider>(context)!;
    var mediaQuery=MediaQuery.of(context).size;
    var theme=Theme.of(context);
    return  Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Image.asset(provider.getBackGround(),height: mediaQuery.height, width: mediaQuery.width,fit: BoxFit.cover,).image
        )
      ),child: Scaffold(
      appBar: AppBar(title: Text("إسلامي",style:theme.textTheme.titleLarge ,),),
      body: Container(
        height: mediaQuery.height,
        width: mediaQuery.width,
        margin: EdgeInsetsDirectional.only(start: 20,end:20,top: 15,bottom: 60),
        padding: EdgeInsetsDirectional.symmetric(horizontal: 15,vertical: 20),
        decoration: BoxDecoration(
            color:provider.isDark()? const Color(0XFF141A2E).withOpacity(.8): const Color(0XFFF8F8F8).withOpacity(.8),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Text("${args.hadethTitle}",
              style:provider.isDark()?theme.textTheme.bodyMedium!.copyWith(color: Color(0XFFFACC1D)) : theme.textTheme.bodyMedium,),
            const Divider(indent: 30,endIndent: 30,),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Text("${args.hadethContent}",style: theme.textTheme.bodySmall!.copyWith(height: 1.6),textAlign: TextAlign.center,),

              ),
            )





          ],
        ),

      ),

    ),




    );
  }
}
