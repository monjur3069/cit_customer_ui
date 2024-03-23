import 'package:cit_customer/view/screens/all_orders/all_orders_controller.dart';
import 'package:get/get.dart';

class AllOrdersBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => AllOrdersController());
  }

}