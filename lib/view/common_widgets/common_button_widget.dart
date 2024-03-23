import 'package:cit_customer/utils/const_data.dart';
import 'package:cit_customer/view/common_widgets/CommonTextWidget.dart';
import 'package:flutter/material.dart';

class CommonButtonWidget extends StatelessWidget {
  final String buttonName;
  final double? height;
  final double? width;
  final VoidCallback? onTap;
  final Color? gradientColor1;
  final Color? gradientColor2;
  final Color? gradientColor3;
  final Color? gradientColor4;
  final double? fontSize;
  final double? radius;
  final double? paddingVertical;

  const CommonButtonWidget(
      {this.width,
      this.height,
      required this.buttonName,
      super.key,
      this.onTap,
      this.fontSize,
      this.radius,
      this.paddingVertical,
      this.gradientColor1,
      this.gradientColor2,
      this.gradientColor3,
      this.gradientColor4});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? kWidth / 2,
        alignment: Alignment.center,
        height: height ?? kHeight / 13.5,
        margin: EdgeInsets.symmetric(vertical: paddingVertical ?? 15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: const [0.1, 0.5, 0.7, 0.9],
            colors: [
              gradientColor1 ?? Colors.blue.shade800,
              gradientColor2 ?? Colors.blue.shade700,
              gradientColor3 ?? Colors.blue.shade600,
              gradientColor4 ?? Colors.blue.shade400,
            ],
          ),
          borderRadius: BorderRadius.all(Radius.circular(radius ?? 20)),
        ),
        child: CommonTextWidget(
          text: buttonName,
          fontColor: primaryWhite,
          fontWeight: FontWeight.w500,
          fontSize: fontSize ?? 18,
        ),
      ),
    );
  }
}
