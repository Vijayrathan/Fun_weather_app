import 'dart:convert';
import 'package:http/http.dart';
 class Networkhelper {
   String url;

   Networkhelper(this.url);

   Future getData() async {
     Response response = await get(url);
     print(response.statusCode);
     if (response.statusCode == 200) {
       String data = response.body;
       return jsonDecode(data);
     }
     else {
       print(response.statusCode);
     }
   }
 }