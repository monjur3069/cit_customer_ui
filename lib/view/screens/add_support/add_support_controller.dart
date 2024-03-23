import 'package:cit_customer/view/common_widgets/internet_connection_checker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddSupportController extends GetxController{
  TextEditingController supportTitleController = TextEditingController();
  TextEditingController supportDescriptionController = TextEditingController();
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
    supportTitleController.dispose();
    supportDescriptionController.dispose();
    super.dispose();
  }

}