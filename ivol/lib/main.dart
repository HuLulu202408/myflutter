import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'utils/ivol_route_register.dart';


void main() {
  runApp(IVOLApp());
}

class IVOLApp extends StatelessWidget {
  const IVOLApp({super.key});
  //
  void _instanceEasyLoadingBeforeLaunch(){
          EasyLoading.instance
        ..loadingStyle = EasyLoadingStyle.light
        ..indicatorType = EasyLoadingIndicatorType.wave
        ..maskType = EasyLoadingMaskType.black
        ..dismissOnTap = false;
  }
//
  MaterialApp _launchIvolMaterialApp(){
    return MaterialApp(
      //show debug banner
        debugShowCheckedModeBanner: false,
      // when push unregist route
        onGenerateRoute: (settings){
          print("${settings.name}");
          return null;
        },
        //theme conf
        theme: ThemeData(primaryColor: Colors.blue),
        //
        routes: IVOLRouteRegister.willRegisteRoutes(),
        //
        builder: EasyLoading.init(),
      );
  }

    @override
    Widget build(BuildContext context) {
      _instanceEasyLoadingBeforeLaunch();
      return _launchIvolMaterialApp();
    }
  }
