
import 'package:cit_customer/utils/const_data.dart';
import 'package:flutter/material.dart';

class CommonSearchField extends StatelessWidget {
  const CommonSearchField(
      {super.key,
      required this.onChange,
      required this.isTextEnable,
      required this.searchClose,
      required this.textEditingController});
  final Function(String) onChange;
  final VoidCallback searchClose;
  final bool isTextEnable;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        style: TextStyle(color: Colors.black, fontSize: kSize),
        controller: textEditingController,
        onChanged: onChange,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.symmetric(horizontal: kSize * 1.5),
          hintText: "Search here..",
          hintStyle: TextStyle(color: Colors.black45, fontSize: kSize),
          focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Colors.blueAccent.shade200, width: 1),
              borderRadius: BorderRadius.circular(10)),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey, width: 1),
              borderRadius: BorderRadius.circular(10)),
          suffixIcon: isTextEnable != true
              ? const Icon(Icons.search)
              : InkWell(
                  onTap: searchClose,
                  child: Icon(
                    Icons.cancel,
                    color: Theme.of(context).cardColor,
                  ),
                ),
        ),
      ),
    );
  }
}
