import 'package:flutter/material.dart';
import '../shared/styles.dart';

class MainButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const MainButton({Key? key, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: 360,
        height: 71,
        decoration: BoxDecoration(
          color: appSecondaryColor,
          border: Border.all(width: 1, color: appStrokeColor),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(title, style: textParagraphBold),
      ),
    );
  }
}
