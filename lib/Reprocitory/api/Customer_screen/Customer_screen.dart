import 'dart:convert';



import 'package:http/http.dart';

import '../../../main.dart';


import '../../modelclass/Customermodel.dart';
import '../api_clint.dart';







class CustomerApi {
  ApiClient apiClient = ApiClient();


  Future<List<Customermodel>> customerapi() async {
    String trendingpath = '${basePath}/api/customers/';
    var body = {


    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', jsonEncode(body));

    return Customermodel.listFromJson(jsonDecode(response.body));
  }
}