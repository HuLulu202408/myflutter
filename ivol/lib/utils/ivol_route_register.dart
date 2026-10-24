
import 'package:flutter/widgets.dart';
import 'package:ivol/routes/ivol_appHome_route.dart';
import 'package:ivol/routes/ivol_page_login.dart';

class IVOLRouteRegister {

  static Map<String,Widget Function(BuildContext)> willRegisteRoutes(){

    return{
      "/":(ctx)=>IVOAppHomeRoute(),
      "login":(ctx)=>IVOLoginPageWidget(),
    };    
  }



}