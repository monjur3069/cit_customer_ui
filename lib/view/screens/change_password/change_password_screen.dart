import 'package:cit_customer/utils/const_data.dart';
import 'package:cit_customer/view/common_widgets/CommonTextWidget.dart';
import 'package:cit_customer/view/common_widgets/common_text_form_field.dart';
import 'package:cit_customer/view/screens/change_password/change_password_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<ChangePasswordController>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        surfaceTintColor: Colors.transparent,
        leading: IconButton(onPressed: ()=> Get.back(), icon: const Icon(Icons.arrow_back_ios,color: primaryWhite,)),
        title: const CommonTextWidget(
          text: 'Update Your Password',
          fontColor: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
        centerTitle: true,
      ),
      body: Form(
        key: controller.formKey,
          child: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 10, left: 8, right: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonTextWidget(text: 'Current Password : ',fontSize: 16,fontWeight: FontWeight.w600,),
                SizedBox(width: 2,),
                Icon(Icons.star,size: 10,color: primaryRed,)
              ],
            ),
            const SizedBox(height: 10,),
            CommonTextFormField(hintText: 'Write current password here', controller: controller.currentPasswordController),
            const SizedBox(height: 20,),

            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonTextWidget(text: 'New Password : ',fontSize: 16,fontWeight: FontWeight.w600,),
                SizedBox(width: 2,),
                Icon(Icons.star,size: 10,color: primaryRed,)
              ],
            ),
            const SizedBox(height: 10,),
            CommonTextFormField(hintText: 'Write new password here', controller: controller.newPasswordController),
            const SizedBox(height: 20,),

            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonTextWidget(text: 'Confirm Password : ',fontSize: 16,fontWeight: FontWeight.w600,),
                SizedBox(width: 2,),
                Icon(Icons.star,size: 10,color: primaryRed,)
              ],
            ),
            const SizedBox(height: 10,),
            CommonTextFormField(hintText: 'Write confirm password here', controller: controller.confirmPasswordController),
            const SizedBox(height: 20,),



            Center(
              child: GestureDetector(
                onTap: ()=> controller.onSubmit(),
                child: Container(
                  width: 200,
                  alignment: Alignment.center,
                  height: 50,
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.1, 0.5, 0.5, 0.9],
                      colors: [
                        Color(0xff2B3A4A),
                        Color(0xff4A6273),
                        Color(0xff6794A6),
                        Color(0xff82BBC4),
                      ],
                    ),
                    borderRadius:
                    BorderRadius.all(Radius.circular(20)),
                  ),
                  child: const Text(
                    'SUBMIT',
                    maxLines: 1,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
