import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController extends GetxController{
  RxBool status = false.obs;

  @override
  void onInit() {
    getLoginInfo();
    super.onInit();
  }

  getLoginInfo()async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    status.value = prefs.getBool("isBeforeLogin") ?? false;
  }
}