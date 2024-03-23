import 'package:cit_customer/utils/const_data.dart';
import 'package:cit_customer/view/common_widgets/CommonTextWidget.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

Card buildListViewItems(int index) {
  return Card(
    surfaceTintColor: Colors.transparent,
    color: Colors.white,
    margin: const EdgeInsets.only(left: 8,right: 8,bottom: 8),
    child: ListTile(
      horizontalTitleGap: 0,
      contentPadding: const EdgeInsets.only(left: 12,right: 4),
      leading: CommonTextWidget(text: '${index+1}',fontSize: 14,fontWeight: FontWeight.w400),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CommonTextWidget(text: 'Invoice No : ',fontSize: 14,fontWeight: FontWeight.w400),
                  CommonTextWidget(text: '2024-03-97246711',fontSize: 12,fontWeight: FontWeight.w400,fontColor: Colors.grey.shade500,),
                ],
              ),
              Row(
                children: [
                  const CommonTextWidget(text: 'Total Amount : ',fontSize: 14,fontWeight: FontWeight.w400),
                  CommonTextWidget(text: '${formatMoney(59239890.00)} $taka',fontSize: 12,fontWeight: FontWeight.w400,fontColor: Colors.grey.shade500,),
                ],
              ),
              Row(
                children: [
                  const CommonTextWidget(text: 'Due Amount : ',fontSize: 14,fontWeight: FontWeight.w400),
                  CommonTextWidget(text: '${formatMoney(59189890.00)} $taka',fontSize: 12,fontWeight: FontWeight.w400,fontColor: Colors.grey.shade500,),
                ],
              ),
              Row(
                children: [
                  const CommonTextWidget(text: 'Paid Amount : ',fontSize: 14,fontWeight: FontWeight.w400),
                  CommonTextWidget(text: '${formatMoney(50000.00)} $taka',fontSize: 12,fontWeight: FontWeight.w400,fontColor: Colors.grey.shade500,),
                ],
              ),
              const Row(
                children: [
                  CommonTextWidget(text: 'Payment Status : ',fontSize: 14,fontWeight: FontWeight.w400),
                  CommonTextWidget(text: 'Partial Paid',fontSize: 12,fontWeight: FontWeight.w600,fontColor: Color(0xffffc107),),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularPercentIndicator(
                radius: 40.0,
                lineWidth: 5.0,
                percent: 0.70,

                center: const CommonTextWidget(text: '70%',fontSize: 14,fontWeight: FontWeight.w600,),
                progressColor: Colors.green,
              ),
              const SizedBox(height: 10,),
              const Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.download,size: 20,),
                  SizedBox(width: 10,),
                  Icon(Icons.delete,size: 20,color: Colors.red,),
                ],
              )
            ],
          ),
        ],
      ),
    ),
  );
}