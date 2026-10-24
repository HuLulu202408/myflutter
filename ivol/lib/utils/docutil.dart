import 'package:flutter/services.dart'show rootBundle;
import 'dart:convert';
class Docutil {

 void requestGetUsers(void Function(List<Map<String, dynamic>>results,String error) finished) 
 {
   loadDoc("users.json").then((value) {
     List<Map<String, dynamic>> results = [];
     try {
       results = List<Map<String, dynamic>>.from(jsonDecode(value));
     } catch (e) {
       finished([], e.toString());
       return;
     }
     finished(results, "");
   }).catchError((error) {
     finished([], error.toString());
   });
   
  }
  //root bundel 
  Future<String> loadDoc(String docName) async {
    return await rootBundle.loadString(getDocPath(docName));
  }
  
  String getDocPath(String docName) {
    return "assets/json/$docName";
  }
}