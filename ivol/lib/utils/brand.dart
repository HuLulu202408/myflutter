
import 'package:flutter/material.dart';

class IVOLBrandUtil {

  static AppBar brandAppBarWithContex(BuildContext context,String title){
    return AppBar(
        // clipBehavior: ,
        shadowColor: null,
        scrolledUnderElevation: 0,
        backgroundColor: Color.from(alpha: 0, red: 0, green: 0, blue: 0),
        title: Text(title,style: TextStyle(
          fontFamily:'.SF Pro Text',
          fontWeight: FontWeight.w800,
          fontSize: 24.0
        ),),
        leading: TextButton.icon(onPressed:()=> Navigator.pop(context), label:Image.asset("assets/images/navBack.png")),
      );
  }

  static Text? commonNavTitleWithText(String? title){
    if (title == null || title.isEmpty){
      return null;
    }
    return Text(title,style: TextStyle(
      color: Colors.black,
      fontFamily: '.SF Pro Text',
      fontSize: 22.0,
      fontWeight: FontWeight.w600,
    ),
    textAlign: TextAlign.center,
    
    );
  }

  static Scaffold brandScaffold(String title,Widget body,{bool extendBodyBehindAppBar = false}){

    return Scaffold(
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(title,style: TextStyle(
          fontSize: 22.0,
          fontFamily: '.SF Pro Text',
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        ),
      ),
      body: body,
    );
  }

}