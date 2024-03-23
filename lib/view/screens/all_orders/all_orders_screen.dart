import 'package:cit_customer/utils/const_data.dart';
import 'package:cit_customer/view/common_widgets/CommonTextWidget.dart';
import 'package:cit_customer/view/screens/all_orders/all_orders_controller.dart';
import 'package:cit_customer/view/screens/home/widget/home_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllOrdersScreen extends StatelessWidget {
  const AllOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AllOrdersController());
    return Scaffold(
      backgroundColor: scaffoldBg,
      appBar: AppBar(
        backgroundColor: primaryColor,
        surfaceTintColor: Colors.transparent,
        title: const CommonTextWidget(
          text: 'All Orders',
          fontColor: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context,index) {
                      return buildListViewItems(index);
                    }),
              )
            ],
          )),
    );
  }
}
