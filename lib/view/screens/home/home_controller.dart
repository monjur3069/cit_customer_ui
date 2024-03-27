import 'package:cit_customer/models/dashboard_model.dart';
import 'package:cit_customer/services/api_Services/dashboard_service.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  final List<Map<String,String>> dummy = [
    {
      'value' : '1',
      'title' : 'Total Orders'
    },
    {
      'value' : '0',
      'title' : 'Customer Queries'
    },
    {
      'value' : '1',
      'title' : 'Customer Request'
    },
    {
      'value' : 'Active',
      'title' : 'Customer Status'
    },

  ];

  Dashboard? dashboard;
  RxBool isDataLoaded = false.obs;
  fetchHomePageData() async {
    dashboard = await DashboardService().getDashboardDataApi();
    isDataLoaded.value = true;
  }

  @override
  void onInit() {
    print('****************Called*************');
    fetchHomePageData();
    super.onInit();
  }

}