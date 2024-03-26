import 'dart:convert';



import 'package:http/http.dart';

import '../../../main.dart';


import '../../modelclass/Customermodel.dart';
import '../../modelclass/Profile.dart';
import '../api_clint.dart';







class ProfileApi {
  ApiClient apiClient = ApiClient();


  Future<ProfileModel> profileapi() async {
    String trendingpath = '${basePath}/api/employee_profile/';
    var body = {


    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', jsonEncode(body));

    return ProfileModel.fromJson(jsonDecode(response.body));
  }
}