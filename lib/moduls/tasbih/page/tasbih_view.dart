import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TasbihView extends StatefulWidget {
   TasbihView({super.key});

  @override
  State<TasbihView> createState() => _TasbihViewState();
}

class _TasbihViewState extends State<TasbihView> {
    int count=0;

  @override
  Widget build(BuildContext context) {
    var theme= Theme.of(context);
    var mediaQuery=MediaQuery.of(context).size;
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Padding(
                    padding: EdgeInsetsDirectional.only(top: 45),
                    child: Image.asset("assets/images/body_of _seb7a.png",height: mediaQuery.height*0.4,)),
                Image.asset("assets/images/head_of_seb7a.png"),


              ],
            ),
            Text("عدد التسبيحات",style: theme.textTheme.bodyLarge,),
           const SizedBox(height: 15),
            Container(
              width: 80,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:const Color(0XFFB7935F).withOpacity(0.57)//#B7935F
              ),
                child:
                Center(child: Text("$count",style: theme.textTheme.bodyMedium,))
            ),
           const SizedBox(height: 20,),
            TextButton(onPressed: (){
              setState(() {
                count++;
              });
              }, child: Text("سبحان الله",
              style: theme.textTheme.bodyMedium!.copyWith(color: Colors.white),
              textAlign: TextAlign.center,),
              style: TextButton.styleFrom(
              backgroundColor: Color(0XFFB7935F),
                padding: EdgeInsetsDirectional.symmetric(horizontal: 8,vertical: 3)
            ),)
          ],
        ),
      ),
    );
  }
}
