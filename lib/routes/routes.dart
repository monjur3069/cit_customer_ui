import 'package:cit_customer/routes/routes_name.dart';
import 'package:cit_customer/view/screens/add_request/add_request_binding.dart';
import 'package:cit_customer/view/screens/add_request/add_request_screen.dart';
import 'package:cit_customer/view/screens/add_support/add_support_binding.dart';
import 'package:cit_customer/view/screens/add_support/add_support_screen.dart';
import 'package:cit_customer/view/screens/change_password/change_password_binding.dart';
import 'package:cit_customer/view/screens/change_password/change_password_screen.dart';
import 'package:cit_customer/view/screens/dashboard/dashboard_binding.dart';
import 'package:cit_customer/view/screens/dashboard/dashboard_screen.dart';
import 'package:cit_customer/view/screens/login/login_binding.dart';
import 'package:cit_customer/view/screens/login/login_screen.dart';
import 'package:cit_customer/view/screens/splash/splash_binding.dart';
import 'package:cit_customer/view/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppRoute {
  static final pages = [
    GetPage(
      name: Routes.splashRoute,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.loginRoute,
      page: () => const LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
        name: Routes.dashboardRoute,
        page: () => const DashboardScreen(),
        binding: DashboardBinding(),
        curve: Curves.ease,
        transition: Transition.circularReveal,
        transitionDuration: const Duration(seconds: 3),
    ),
    GetPage(
        name: Routes.addRequestRoute,
        page: () => const AddRequestScreen(),
        binding: AddRequestBinding(),
    ),
    GetPage(
        name: Routes.addSupportRoute,
        page: () => const AddSupportScreen(),
        binding: AddSupportBinding(),
    ),
    GetPage(
        name: Routes.changePasswordRoute,
        page: () => const ChangePasswordScreen(),
        binding: ChangePasswordBinding(),
    ),

  ];
}
