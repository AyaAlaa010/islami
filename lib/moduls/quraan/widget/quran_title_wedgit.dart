import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuranTitleWidget extends StatelessWidget {
  QuranTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var theme=Theme.of(context);
    return Row(
      children: [
        Expanded(child: Text("اسم السوره",style: theme.textTheme.bodyMedium,textAlign: TextAlign.center,)),
        Container( height: 38,width: 1.5,color:theme.primaryColor ,),
        Expanded(child: Text("رقم السوره",style: theme.textTheme.bodyMedium,textAlign: TextAlign.center,)),

      ],
    );
  }
}
