import 'package:cit_customer/utils/const_data.dart';
import 'package:cit_customer/view/common_widgets/CommonTextWidget.dart';
import 'package:flutter/material.dart';

Container buildGridItem(int index, String value, String title) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(6),
      color: primaryWhite,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CommonTextWidget(text: value,fontSize: 16,fontWeight: FontWeight.w600,),
        CommonTextWidget(text: title,fontSize: 14,fontWeight: FontWeight.w400,),
      ],
    ),
  );
}