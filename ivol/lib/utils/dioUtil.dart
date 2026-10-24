


import 'package:dio/dio.dart';


typedef ReqCompeteHandler = void Function(String? errMsg,Map<String,dynamic>? response);
class DioUtil {

  final Dio _dio= Dio();
  
  DioUtil(){
    _dioOptionConfigurations();
    _addDioInterceptor();
  }

  void _dioOptionConfigurations(){
    _dio.options..baseUrl = ''
      ..connectTimeout = Duration(seconds: 10)
      ..sendTimeout = Duration(seconds: 10)
      ..receiveTimeout = Duration(seconds: 10);
  }


   void _addDioInterceptor(){
    _dio.interceptors.add(InterceptorsWrapper(
      onError:(context, handler){
        handler.reject(context);
      },
      onRequest: (context, handler){
        handler.next(context);
      },

      onResponse: (context, handler){
        //状态码拦截
        // context.statusCode >= 200
        int statusColde = context.statusCode ?? 0;
        if (statusColde >= 200 && statusColde< 300){
          handler.next(context);
          return;
        }
        handler.reject(DioException(
          requestOptions: context.requestOptions,
          response: context,
          error: "$statusColde",
          message: context.statusMessage,
        ));
      },
    ));
   }

   Future <Response<dynamic>> get(String path,Map<String,dynamic>? parameters){
    return  _dio.get(path,queryParameters: parameters);
   }


}