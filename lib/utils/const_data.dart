import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

const String taka = '৳';
double kHeight = 700;
double kWidth = 400;
double kSize = (kHeight * .0133) + (kWidth * .011);

const Color primaryColor = Color(0xff2B3A4A);
const Color scaffoldBg = Color(0xFFF6F6F6);
const Color primaryBlack = Color(0xFF222222);
const Color primaryWhite = Color(0xFFFFFFFF);
const Color primaryGrey = Color(0xFF9B9B9B);
const Color primaryGreen = Color(0xFF0DBE02);
const Color primaryRed = Color(0xFFDB3022);

String formatMoney(double amount) {
  final formatter = NumberFormat("#,##0.00", "en_US");
  return formatter.format(amount);
}

const dummyString =
    '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.''';
