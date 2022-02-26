import 'package:flutter/material.dart';
import '../shared/styles.dart';

class InfoAndTextButton extends StatelessWidget {
  final String buttonTitle;
  final String info;
  final VoidCallback onTap;

  const InfoAndTextButton({
    Key? key,
    required this.buttonTitle,
    required this.info,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(info, style: textParagraph1),
        GestureDetector(
          onTap: onTap,
          child: Text(
            buttonTitle,
            style: textParagraph1.merge(const TextStyle(color: Colors.white)),
          ),
        )
      ],
    );
  }
}
