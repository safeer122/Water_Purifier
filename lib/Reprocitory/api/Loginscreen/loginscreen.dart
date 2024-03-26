import 'dart:convert';



import 'package:http/http.dart';
import 'package:water_purifier/Ui/Login_page.dart';

import '../../../main.dart';

import '../../modelclass/LoginScreen.dart';
import '../api_clint.dart';






class LoginApi {
  ApiClient apiClient = ApiClient();


  Future<LoginModel> login(String user,String password,) async {
    String trendingpath = '${basePath}/api/login/';
    var body = {

        "username": user,
        "password": password

    };
    print(body);
    Response response = await apiClient.invokeAPI(trendingpath, 'POST',body);

    return LoginModel .fromJson(jsonDecode(response.body));
  }
}