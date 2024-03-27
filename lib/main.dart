
import 'package:cit_customer/routes/routes.dart';
import 'package:cit_customer/routes/routes_name.dart';
import 'package:cit_customer/view/screens/dashboard/dashboard_screen.dart';
import 'package:cit_customer/view/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

void main() async {
  EasyLoading.instance
    ..displayDuration = const Duration(seconds: 2)
    ..loadingStyle = EasyLoadingStyle.custom //This was missing in earlier code
    ..backgroundColor = Colors.blue
    ..indicatorColor = Colors.white
    ..maskColor = Colors.red
    ..textColor = Colors.white
    ..contentPadding = const EdgeInsets.symmetric(horizontal: 50, vertical: 20)
    ..indicatorType = EasyLoadingIndicatorType.fadingGrid
    ..dismissOnTap = false;
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then(
        (_) => runApp(const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppRoute.pages,
      builder: EasyLoading.init(),
      // initialRoute: Routes.splashRoute,
      home: const DashboardScreen(),
    );
  }
}

