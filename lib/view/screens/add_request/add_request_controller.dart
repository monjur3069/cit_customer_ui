import 'package:cit_customer/view/common_widgets/internet_connection_checker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddRequestController extends GetxController{
  TextEditingController orderTitleController = TextEditingController();
  TextEditingController orderDescriptionController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  late String title;
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
  void onInit() {
    title = Get.arguments.toString();
    print(title);
    super.onInit();
  }

  @override
  void dispose() {
    orderTitleController.dispose();
    orderDescriptionController.dispose();
    super.dispose();
  }

}