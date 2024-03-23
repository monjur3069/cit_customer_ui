import 'package:cit_customer/utils/const_data.dart';
import 'package:cit_customer/view/common_widgets/CommonTextWidget.dart';
import 'package:cit_customer/view/screens/support/widgets/bottom_sheet_support.dart';
import 'package:flutter/material.dart';

Card buildSupportScreenListViewItems(int index,BuildContext context) {
  return Card(
    surfaceTintColor: Colors.transparent,
    color: Colors.white,
    margin: const EdgeInsets.only(left: 8,right: 8,bottom: 8),
    child: ListTile(
      onTap: () async{
        await showModalBottomSheet(
            context: context,
            builder: (BuildContext context) =>
            const BottomSheetSupport(
                title: 'New Support',
                description: dummyString));
      },
      horizontalTitleGap: 0,
      contentPadding: const EdgeInsets.only(left: 12,right: 4),
      leading: CommonTextWidget(text: '${index+1}',fontSize: 14,fontWeight: FontWeight.w400),
      title: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CommonTextWidget(text: 'Ticket Id : ',fontSize: 16,fontWeight: FontWeight.w400),
              CommonTextWidget(text: '01',fontSize: 14,fontWeight: FontWeight.w400,fontColor: Colors.grey.shade500,),
            ],
          ),
          Row(
            children: [
              const CommonTextWidget(text: 'Support Title : ',fontSize: 16,fontWeight: FontWeight.w400),
              CommonTextWidget(text: 'New Support',fontSize: 14,fontWeight: FontWeight.w400,fontColor: Colors.grey.shade500,),
            ],
          ),
          Row(
            children: [
              const CommonTextWidget(text: 'Description : ',fontSize: 14,fontWeight: FontWeight.w400),
              SizedBox(width: 100,child: CommonTextWidget(text: dummyString,fontSize: 12,fontWeight: FontWeight.w400,fontColor: Colors.grey.shade500,)),
            ],
          ),
          const Row(
            children: [
              CommonTextWidget(text: 'Replay : ',fontSize: 14,fontWeight: FontWeight.w400),
              CommonTextWidget(text: 'No Replay',fontSize: 12,fontWeight: FontWeight.w600,fontColor: primaryRed,),
            ],
          ),
        ],
      ),
      trailing: PopupMenuButton<int>(
        surfaceTintColor: Colors.transparent,
        color: primaryWhite,
        itemBuilder: (context) => [
          PopupMenuItem(
            value: 1,
            child: ListTile(onTap: () async {
              await showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) =>
                  const BottomSheetSupport(
                      title: 'New Support',
                      description: dummyString));
            },leading: const Icon(Icons.visibility),title: const CommonTextWidget(text: 'View'),),
          ),
          const PopupMenuItem(
            value: 2,
            child: ListTile(leading: Icon(Icons.delete,color: primaryRed,),title: CommonTextWidget(text: 'Delete'),),
          ),
          // Add more options as needed
        ],
        onSelected: (value) {
          // Handle the selected option
          switch (value) {
            case 1:
              () async{
                await showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) =>
                    const BottomSheetSupport(
                        title: 'New Support',
                        description: dummyString));
              };
              break;
            case 2:

              break;


          // Add more cases as needed
          }
        },
      ),
    ),
  );
}