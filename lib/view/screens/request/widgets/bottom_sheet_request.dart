import 'package:cit_customer/utils/const_data.dart';
import 'package:cit_customer/view/common_widgets/CommonTextWidget.dart';
import 'package:flutter/material.dart';

class BottomSheetRequest extends StatelessWidget {
  final String title;
  final String description;
  const BottomSheetRequest({required this.title,required this.description,super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.9,
      minChildSize: 0.9,
      maxChildSize: 0.9,
      expand: false,

      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              color: scaffoldBg,
              borderRadius: BorderRadius.circular(8)
          ),
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(left: 25,right: 25,top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CommonTextWidget(text: title,fontSize: 16,fontColor: primaryBlack,fontWeight: FontWeight.w600,),
                ),
                const SizedBox(height: 5,),
                const Divider(height: 1,color: Colors.blue,),
                const SizedBox(height: 15,),
                const Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CommonTextWidget(text: 'Status : ',fontSize: 14,fontColor: primaryBlack,fontWeight: FontWeight.w600,),
                    CommonTextWidget(text: 'Inapproved',fontSize: 13,fontColor: primaryRed,fontWeight: FontWeight.w400,),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const CommonTextWidget(text: 'Admin Note : ',fontSize: 14,fontColor: primaryBlack,fontWeight: FontWeight.w600,),
                    CommonTextWidget(text: '',fontSize: 13,fontColor: Colors.grey.shade500,fontWeight: FontWeight.w400,),
                  ],
                ),

                const SizedBox(height: 10,),
                const CommonTextWidget(text: 'Description : ',fontSize: 14,fontColor: primaryBlack,fontWeight: FontWeight.w600,),
                Wrap(
                  children: [
                    Text(dummyString,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey.shade500),)

                  ],
                ),

                const SizedBox(height: 10,)
              ],
            ),
          ),
        );
      },
    );
  }

}
