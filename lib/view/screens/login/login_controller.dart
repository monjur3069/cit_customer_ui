import 'package:cit_customer/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  final globalKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RxBool isLoading = false.obs;
  RxBool isObscureText = true.obs;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future loginServiceFunction() async {
    await EasyLoading.show();
   /* bool status = await LoginService.loginService(
        email: emailController.text, password: passwordController.text);*/
    bool status = true;
    await EasyLoading.dismiss();

    if(status){
      Get.offAllNamed(Routes.dashboardRoute);
    }
  }
}