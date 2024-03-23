import 'package:cit_customer/view/common_widgets/internet_connection_checker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePasswordController extends GetxController{
  TextEditingController currentPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  onSubmit () async{
    if (!await ConnectionChecker.checkConnection()) {
      Get.snackbar("You are Offline !!",
          "Please check internet connection.",
          backgroundColor: Colors.white,
          colorText: Colors.red,
          snackPosition: SnackPosition.TOP);
      return;
    }
    if(!formKey.currentState!.validate()){
      return;
    }
  }

  @override
  void dispose() {
    currentPasswordController.dispose();
    newPasswordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

}