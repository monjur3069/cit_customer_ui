
import 'package:cit_customer/view/screens/add_support/add_support_controller.dart';
import 'package:get/get.dart';

class AddSupportBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => AddSupportController());
  }

}