import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HadethView extends StatelessWidget {
  const HadethView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Container(
        child: Text("Hadeth",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),textAlign: TextAlign.center,),
      ),
    );
  }
}
