import 'package:flutter/material.dart';
import '../shared/styles.dart';
import '../shared/ui_helpers.dart';

class WelcomeMessage extends StatelessWidget {
  final String title;
  final String text;

  const WelcomeMessage({
    Key? key,
    required this.title,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: textHeading1,
        ),
        verticalSpaceSmall,
        Text(
          text,
          style: textSubTitle1,
        ),
      ],
    );
  }
}
