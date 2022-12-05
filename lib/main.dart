import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:myproject/view/home_page.dart';
import 'package:myproject/view/sample/sample.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart ';



void main() {
  runApp(Home());
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(

      )
  );
}



class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // themeMode: ThemeMode.light,
      // theme: ThemeData.light().copyWith(
      //  buttonTheme: ButtonThemeData().copyWith(
      //    buttonColor: Colors.black
      //  ),
      // ),
      home: Sample(
      ),











    );
  }
}