import 'package:cit_customer/routes/routes_name.dart';
import 'package:cit_customer/utils/const_data.dart';
import 'package:cit_customer/view/screens/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  SplashController splashController = Get.find<SplashController>();
  late Animation<double> _animation;
  @override
  void initState() {
    super.initState();
    logoAnimationController();
  }

  logoAnimationController(){
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _animation = Tween<double>(begin: 0.01, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
    _animationController.forward();
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        if (splashController.status.value == false) {
          Get.offNamed(Routes.loginRoute);
        } else {
          Get.offNamed(Routes.dashboardRoute);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    kHeight = MediaQuery.of(context).size.height;
    kWidth = MediaQuery.of(context).size.width;
    kSize = (kHeight * .0133) + (kWidth * .011);
    return Scaffold(
      body: ScaleTransition(
        filterQuality: FilterQuality.medium,
        scale: _animation,
        child: Center(
          child: Image.asset(
            'images/logo.png',
            color: Colors.blue,
            height: kHeight-100,
            width: kWidth-50,
          ),
        ),
      ),
    );
  }
}
