import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:login/services/http_service.dart';
import 'package:login/utiles/api_resourse.dart';

import '../../model/model.dart';

class HomeScreenApi {
  static Future getData() async {
    try {
      http.Response? response = await HttpServices.getApi(url: EndPointRes.productAPI);
      if(response != null && response.statusCode ==200){
        return productModelFromJson((response.body));
      }
    }
    catch (e) {
      print(e);
      return null;
    }
  }

  Future addData(Map<String,dynamic>body) async {
    try {

    }
    catch (e) {
      print(e);
    }
  }
}




