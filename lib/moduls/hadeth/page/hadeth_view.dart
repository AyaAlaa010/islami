import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/moduls/hadeth/page/hadeth_details_view.dart';

class HadethView extends StatefulWidget {


   HadethView({super.key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  List<HadethDetails > allAhadethList=[];

  @override
  Widget build(BuildContext context) {
    var mediaQuery=MediaQuery.of(context).size;
    var theme=Theme.of(context);
    if(allAhadethList.isEmpty) loadData();

    return  Column(
      children: [
        Image.asset("assets/images/hadeth_header.png",height: mediaQuery.height*0.2,),
        const Divider(),
       Text("الأحاديث",style: theme.textTheme.bodyLarge,),
        const Divider(),
        Expanded(child: ListView.builder(itemBuilder: (context,index){
          return InkWell(
              onTap: (){
                Navigator.pushNamed(context, HadethDetailsView.routeName,arguments: allAhadethList[index]);
              },
              child: Text(allAhadethList[index].hadethTitle, style: theme.textTheme.bodyMedium!.copyWith(height: 1.6),textAlign: TextAlign.center,));
        },itemCount: allAhadethList.length,))

      ],

    );
  }


  Future<void> loadData() async {
    String content = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> allHadeth = content.split("#");

    for (int i = 0; i < allHadeth.length; i++) {
      String singleHadeth = allHadeth[i].trim();
      int titleLength = singleHadeth.indexOf("\n");
      String title = singleHadeth.substring(0, titleLength);
      String content = singleHadeth.substring(titleLength + 1);
      HadethDetails hadethDetailsData = HadethDetails(
        hadethContent:  content,
        hadethTitle: title,
      );

      allAhadethList.add(hadethDetailsData);

      setState(() {});
    }
  }
}



 class HadethDetails{
  final String hadethTitle;
  final String hadethContent;
  HadethDetails({required this.hadethContent, required this.hadethTitle});
 }