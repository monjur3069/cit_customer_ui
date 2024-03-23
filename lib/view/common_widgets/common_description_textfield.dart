import 'package:cit_customer/utils/const_data.dart';
import 'package:flutter/material.dart';

class CommonDescriptionTextField extends StatelessWidget {
  const CommonDescriptionTextField(
      {super.key, required this.controller, this.hint, this.validateEnable, this.maxLine, this.minLine});
  final TextEditingController controller;
  final String? hint;
  final bool? validateEnable;
  final int? maxLine;
  final int? minLine;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textInputAction: TextInputAction.newline,
      minLines: minLine ?? 1,
      maxLines: maxLine ?? 4,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(kSize/3),
            borderSide: BorderSide(color: Colors.blueGrey.shade50)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(kSize/3),
            borderSide: BorderSide(color: Colors.blueGrey.shade50)),
        contentPadding:
            EdgeInsets.symmetric(vertical: kSize / 3, horizontal: 20),
        fillColor: primaryWhite,
        filled: true,
        hintStyle: const TextStyle(color: primaryGrey, fontSize: 12,),
        hintText: hint ?? "write description",
        border: InputBorder.none,
      ),
      style: const TextStyle(
        color: Colors.black45,
        fontSize: 14,
      ),
      validator: (value) {
        if(validateEnable == null){
          return null;
        }
        if (value == null || value.isEmpty) {
          return 'This field must not be empty';
        }
        return null;
      },
    );
  }
}
