import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuranTitleWidget extends StatelessWidget {
  final String suraName;
  final int suraNumber;
  QuranTitleWidget({super.key,required this.suraName,required this.suraNumber});

  @override
  Widget build(BuildContext context) {
    var theme=Theme.of(context);
    return Row(
      children: [
        Expanded(child: Text("$suraNumber",style: theme.textTheme.bodyMedium,textAlign: TextAlign.center,)),
        Container( height: 38,width: 1.5,child: VerticalDivider() ,),
        Expanded(child: Text(suraName,style: theme.textTheme.bodyMedium,textAlign: TextAlign.center,)),

      ],
    );
  }
}
