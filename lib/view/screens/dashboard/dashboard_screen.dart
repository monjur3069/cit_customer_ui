import 'package:cit_customer/utils/const_data.dart';
import 'package:cit_customer/view/screens/dashboard/dashboard_controller.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(DashboardController());
    // var controller = Get.find<DashboardController>();
    return PopScope(
      canPop: false, //It should be false to work
      onPopInvoked: (didPop) {
        if (didPop) {
          return;
        }
        Get.defaultDialog(
          title: 'Confirmation',
          titleStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          content: const Text('Are you sure  to exit?'),
          actions: [
            GestureDetector(
              onTap: () => Navigator.pop(context, false),
              child: Container(
                height: 30,
                width: 70,
                decoration: BoxDecoration(
                    color: primaryRed,
                    borderRadius: BorderRadius.circular(8)),
                child: const Center(
                    child: Text(
                      'Cancel',
                      style: TextStyle(color: primaryWhite),
                    )),
              ),
            ),
            GestureDetector(
              onTap: () {
                SystemNavigator.pop();
              },
              child: Container(
                height: 30,
                width: 70,
                decoration: BoxDecoration(
                    color: primaryGreen,
                    borderRadius: BorderRadius.circular(8)),
                child: const Center(
                    child: Text(
                      'Yes',
                      style: TextStyle(color: primaryWhite),
                    )),
              ),
            ),
          ],
        ); //Here this temporary, you can change this line
      },
      child: Scaffold(
        body: Obx(() => controller.screens[controller.currentIndex.value]),
        bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(iconTheme: const IconThemeData(color: primaryWhite),),
          child: Obx(
                () => CurvedNavigationBar(
                  key: controller.bottomNavigationKey,
              height: 60,
              backgroundColor: Colors.transparent,
              buttonBackgroundColor: primaryColor,
              color:  primaryColor,
              index: controller.currentIndex.value,
              items: controller.items,
                  onTap: (newIndex)=> controller.currentIndex.value = newIndex,
            ),
          ),
        ),
      ),
    );
  }
}
