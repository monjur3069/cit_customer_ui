import 'dart:convert';
import 'package:cit_customer/services/apis.dart';
import 'package:cit_customer/services/hive_service/app_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:http/http.dart' as http;


class LoginService {
  static Future<bool> login(String email, String password) async {
    try {
      var url = Uri.parse(Apis.login);
      var body = jsonEncode({"email": email, "password": password});
      var response = await http.post(url,
          body: body,
          encoding: Encoding.getByName("utf-8"),
          headers: {
            'Content-Type': 'application/json;charset=UTF-8',
            'Accept': 'application/json',
            'Charset': 'utf-8'
          });
      var decodedData = jsonDecode(response.body);
      if (decodedData['message'] == "Invalid Credentials!") {
        await EasyLoading.showSuccess("Invalid Email Or Password.");
        return false;
      }else if (decodedData['message'] == "User Login Successfully!") {
        Map<String, dynamic> userInfo = {
          'user_id': decodedData['data']['id'] ?? '',
          'user_name': decodedData['data']['name'] ?? '',
          'user_email': decodedData['data']['email'] ?? '',
          'user_phone': decodedData['data']['phone'] ?? '',
          'user_image': decodedData['data']['image'],
          'user_pass': password,
          'user_address': decodedData['data']['address'] ?? '',
          'user_date_of_birth': decodedData['data']['date_of_birth'] ?? '',
          'user_status': decodedData['data']['status'] ?? '',
          'user_created_at': decodedData['data']['created_at'] ?? '',
          'user_updated_at': decodedData['data']['updated_at'] ?? '',
        };

        await AppInfo.box.put('userInfo', userInfo);
        await AppInfo.box.put('token', decodedData['token']);
        await EasyLoading.showSuccess("Login Successful");
        return true;
      }
    } catch (e) {
      debugPrint("Error : $e");
    }
    await EasyLoading.showError("Failed.!!");
    return false;
  }
}
