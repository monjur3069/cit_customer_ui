import 'package:cit_customer/view/screens/all_orders/all_orders_screen.dart';
import 'package:cit_customer/view/screens/home/home_screen.dart';
import 'package:cit_customer/view/screens/profile/profile_screen.dart';
import 'package:cit_customer/view/screens/request/request_screen.dart';
import 'package:cit_customer/view/screens/support/support_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController{
  GlobalKey<CurvedNavigationBarState> bottomNavigationKey = GlobalKey();
  var currentIndex = 2.obs;
  var items = [
    const FittedBox(
      child: Padding(
        padding: EdgeInsets.all(3.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.shopping_cart),
            Text('Order',style: TextStyle(color: Colors.white,fontSize: 10),)
          ],
        ),
      ),
    ),
    const FittedBox(
      child: Padding(
        padding: EdgeInsets.all(3.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.description_outlined),
            Text('Request',style: TextStyle(color: Colors.white,fontSize: 10),)
          ],
        ),
      ),
    ),
    const FittedBox(
      child: Padding(
        padding: EdgeInsets.all(3.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.home),
            Text('Home',style: TextStyle(color: Colors.white,fontSize: 10),)
          ],
        ),
      ),
    ),
    const FittedBox(
      child: Padding(
        padding: EdgeInsets.all(3.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.chat),
            Text('Support',style: TextStyle(color: Colors.white,fontSize: 10),)
          ],
        ),
      ),
    ),
    const FittedBox(
      child: Padding(
        padding: EdgeInsets.all(3.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.person),
            Text('Profile',style: TextStyle(color: Colors.white,fontSize: 10),)
          ],
        ),
      ),
    ),

  ].obs;
  var screens = [
    const AllOrdersScreen(),
    const RequestScreen(),
    const HomeScreen(),
    const SupportScreen(),
    const ProfileScreen()

  ].obs;

}