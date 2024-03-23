import 'package:cit_customer/utils/const_data.dart';
import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  final IconData icon;
  final String title;
  final TextEditingController controller;
  const CommonTextField({
    super.key,
    required this.title,
    required this.icon, required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0,right: 12,bottom: 10),
      child: ListTile(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kSize)),
        tileColor: primaryWhite,
        leading: Icon(
          icon,
          color: const Color(0xff2B3A4A),
          size: 20,
        ),
        title: TextFormField(
          textInputAction: TextInputAction.done,
          maxLines: 1,
          // cursorHeight: 10,
          clipBehavior: Clip.none,
          cursorColor: Colors.black45,
          style: const TextStyle(
              color: primaryBlack,
              fontSize: 14,
              fontWeight: FontWeight.w400),
          controller: controller,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            alignLabelWithHint: true,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
              borderSide: BorderSide(color: Colors.blueGrey.shade200),
            ),
            suffixIcon: const Icon(Icons.edit,size: 14,),
            enabledBorder: InputBorder.none ,
            contentPadding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 0),
            fillColor: primaryWhite,
            filled: true,
            hintStyle: TextStyle(color: primaryGrey, fontSize: kSize * 1.2),
            hintText: title,
            border: InputBorder.none,
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'This field must not be empty';
            }
            return null;
          }
        )
      ),
    );
  }
}