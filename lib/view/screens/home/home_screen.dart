import 'package:cit_customer/utils/const_data.dart';
import 'package:cit_customer/view/common_widgets/CommonTextWidget.dart';
import 'package:cit_customer/view/screens/home/home_controller.dart';
import 'package:cit_customer/view/screens/home/widget/home_grid_item.dart';
import 'package:cit_customer/view/screens/home/widget/home_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    return Scaffold(
      backgroundColor: scaffoldBg,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          backgroundColor: primaryColor,
          title: ListTile(
            contentPadding: const EdgeInsets.only(left: 5),
            tileColor: primaryColor,
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: const Icon(
                    Icons.person,
                    size: 30,
                    color: primaryColor,
                  )),
            ),
            title: const Text(
              'Monjur Ahmed Akash',
              style: TextStyle(
                  color: primaryWhite, fontWeight: FontWeight.w600),
            ),
            subtitle: const Text(
              'Flutter Developer',
              style: TextStyle(
                  color: primaryWhite, fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 190,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.only(left: 8, right: 8),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 4,
                    childAspectRatio: 2.0),
                itemCount: 4,
                // itemBuilder: (context, index) => HomeGridItem(value: dummy[index]['value'] ?? '', title: dummy[index]['title'] ?? '',),
                itemBuilder: (context, index) => buildGridItem(index,controller.dummy[index]['value']!,controller.dummy[index]['title']!),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8, right: 8),
              child: CommonTextWidget(text: 'Latest Order',fontWeight: FontWeight.w600,fontSize: 18,),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 3,
                  padding: EdgeInsets.zero,
                  itemBuilder: (context,index) {
                    return buildListViewItems(index);
                  }),
            )
          ],
        ),
      ),
    );
  }

}

