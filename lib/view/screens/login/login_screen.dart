
import 'package:cit_customer/utils/const_data.dart';
import 'package:cit_customer/view/common_widgets/CommonTextWidget.dart';
import 'package:cit_customer/view/common_widgets/common_button_widget.dart';
import 'package:cit_customer/view/common_widgets/common_text_form_field.dart';
import 'package:cit_customer/view/screens/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<LoginController>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              right: 0,
              child: Image.asset(
                'images/top1.png',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              right: 0,
              child: Image.asset('images/top2.png', fit: BoxFit.cover),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              child: Image.asset('images/bottom1.png', fit: BoxFit.cover),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              child: Image.asset('images/bottom2.png', fit: BoxFit.cover),
            ),
            Positioned(
                right: 20,
                top: 60,
                child: Image.asset(
                  'images/c.png',
                  fit: BoxFit.cover,
                  height: kHeight / 7,
                  width: kWidth / 4,
                  color: Colors.blueAccent,
                )),
            SizedBox(
              height: kHeight,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Form(
                    key: controller.globalKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: CommonTextWidget(
                            text: 'Login',
                            fontColor: Colors.blue,
                            fontSize: kSize * 2.5,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ///Email
                        CommonTextFormField(
                            validatorEnable: true,
                            hintText: 'Email',
                            controller: controller.emailController),
                        const SizedBox(
                          height: 10,
                        ),
                        ///Password
                        Obx(
                          ()=> TextFormField(
                            textInputAction: TextInputAction.done,
                            maxLines: 1,
                            // cursorHeight: 10,
                            clipBehavior: Clip.none,
                            cursorColor: Colors.black45,
                            style: const TextStyle(
                                color: primaryBlack,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                            controller: controller.passwordController,
                            obscureText: controller.isObscureText.value,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0),
                                  borderSide: BorderSide(color: Colors.blueGrey.shade100, width: 2)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    0,
                                  ),
                                  borderSide: BorderSide(color: Colors.blueGrey.shade50)),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    0,
                                  ),
                                  borderSide: const BorderSide(color: Colors.red)),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 25,
                                  horizontal: 20),
                              fillColor: primaryWhite,
                              filled: true,
                              hintStyle: const TextStyle(color: primaryGrey, fontSize: 13),
                              hintText: 'Password',
                              border: InputBorder.none,

                                suffixIcon: IconButton(
                                  icon: Icon(controller.isObscureText.value
                                      ? Icons.visibility_off
                                      : Icons.visibility,color: primaryColor,),
                                  onPressed: ()=> controller.isObscureText.value = !controller.isObscureText.value,
                                )

                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'This field must not be empty';
                              }
                              if (value.length < 8) {
                                return 'Password must be at least 8 characters long';
                              }

                              return null;
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: CommonButtonWidget(
                            buttonName: 'Login',
                            onTap: () async {
                              FocusScope.of(context).unfocus();
                              if (!controller.globalKey.currentState!
                                  .validate()) {
                                return;
                              }
                              controller.loginServiceFunction();
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
