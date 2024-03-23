import 'dart:io';


import 'package:cit_customer/view/common_widgets/internet_connection_checker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileController extends GetxController{
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  onUpdate () async{
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

  Rx<DateTime?> addDate = Rx<DateTime?>(null);
  selectBirthDate(BuildContext context) async {
    final selectedDate = await showDatePicker(
        context: context,
        initialEntryMode: DatePickerEntryMode.input,
        keyboardType: TextInputType.name,
        initialDate: DateTime.now(),
        firstDate: DateTime(1950),
        lastDate: DateTime.now());
    if (selectedDate != null) {
      addDate.value = selectedDate;
      update();
    }
  }


  ImageSource imageSource = ImageSource.camera;
  final picker = ImagePicker();
  var imgUrl = "".obs;
  File? image;

  getImage() async {
    final pickedFile =
    await picker.pickImage(source: imageSource, imageQuality: 25);
    if (pickedFile != null) {
      image = File(pickedFile.path);
      imgUrl.value = pickedFile.path; // Set imgUrl to the path of the selected image
    }
  }


  // Employee? employee;
  RxBool isDataLoaded = false.obs;

  fetchProfileViewData() async{

  }

  @override
  void onInit() {
    fetchProfileViewData();
    super.onInit();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    addressController.dispose();
    super.dispose();
  }
}