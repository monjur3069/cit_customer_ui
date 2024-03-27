import 'dart:convert';

import 'package:cit_customer/models/dashboard_model.dart';
import 'package:cit_customer/services/apis.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:http/http.dart' as http;


class DashboardService {
  // String token = AppInfo.box.get('token');

  Future<Dashboard?> getDashboardDataApi() async {
    print('****************Called Again *************');
    try {
      String token = '111|nootA7V60QjnUov4DkunoDUzgvhcTyNyEE5wZtxu';
      var url = Uri.parse(Apis.dashboard);
      var response = await http.get(url, headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      });
      print('****************Called Again Again*************');
      final responseData = jsonDecode(response.body);
      print(responseData);
      print(response.statusCode);
      if (response.statusCode == 200) {
        print(response.statusCode);
        var a = DashBoardModel.fromJson(responseData);
        return a.dashboard;
      }
    } catch (e) {
      debugPrint("Error : $e");
      EasyLoading.showError("Failed");
    }

    return null;
  }

}
