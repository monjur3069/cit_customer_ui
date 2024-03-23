import 'package:cit_customer/routes/routes_name.dart';
import 'package:cit_customer/utils/const_data.dart';
import 'package:cit_customer/view/common_widgets/CommonTextWidget.dart';
import 'package:cit_customer/view/screens/request/widgets/request_screen_list_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RequestScreen extends StatelessWidget {
  const RequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBg,
      appBar: AppBar(
        backgroundColor: primaryColor,
        surfaceTintColor: Colors.transparent,
        title: const CommonTextWidget(
          text: 'All Request',
          fontColor: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: ()=> Get.toNamed(Routes.addRequestRoute),
              icon: const Icon(
                Icons.add,
                color: primaryWhite,
              ))
        ],
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
                itemBuilder: (context, index) {
                  return buildRequestScreenListViewItems(index,context);
                }),
          )
        ],
      )),
    );
  }
}
