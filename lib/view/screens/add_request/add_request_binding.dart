import 'package:cit_customer/view/screens/add_request/add_request_controller.dart';
import 'package:get/get.dart';

class AddRequestBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => AddRequestController());
  }

}