import 'package:flutter/material.dart';

import '../shared/styles.dart';

class AppTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController? textEditingController;

  const AppTextField(
      {Key? key, required this.hintText, this.textEditingController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.centerLeft,
      width: 360,
      height: 71,
      decoration: BoxDecoration(
        color: appTextFieldOverlay,
        border: Border.all(width: 1, color: appStrokeColor),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        controller: textEditingController,
        style: textParagraph1.merge(const TextStyle(color: Colors.white)),
        decoration: InputDecoration(
            border: InputBorder.none,
            hintStyle: textParagraph1,
            hintText: hintText),
      ),
    );
  }
}
