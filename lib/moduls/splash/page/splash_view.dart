import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/layout/layout_view.dart';

class SplashView extends StatefulWidget {
  static const String routeName="/";

  SplashView({super.key});


  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {




  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context,LayoutView.routeName);
    });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var mediaQuery=MediaQuery.of(context).size;
    return Scaffold(
      body: Image.asset("assets/images/splash_bg.png",width: mediaQuery.width,height: mediaQuery.height,fit: BoxFit.cover,),
    );




  }
}