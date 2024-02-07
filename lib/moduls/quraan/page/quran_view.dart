import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/moduls/quraan/page/quran_details_view.dart';
import 'package:islami/moduls/quraan/widget/quran_title_wedgit.dart';

class QuranView extends StatelessWidget {
   QuranView({super.key});
     static List<String> surasNames=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
   ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
   ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
   ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
   ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
   ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
   ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
   ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
   ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
   "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];
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
          return InkWell(
              onTap: (){
                Navigator.pushNamed(context, QuranDetailsView.routeName,arguments: SuraDetails(suraName: surasNames[index], suraNumber: index+1));
              },
              child: QuranTitleWidget(suraName: surasNames[index],suraNumber: index+1,));
        },itemCount: 40,

        ))





      ],

    );
  }
}
class SuraDetails{
  final String suraName;
  final int suraNumber;
  SuraDetails({ required this.suraName,required this.suraNumber});
}
