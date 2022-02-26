import 'package:assignment1/ui/dumb_widgets/app_text_field.dart';
import 'package:assignment1/ui/shared/ui_helpers.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatelessWidget {
  final String nameHintText;
  final String emailHintText;
  final String passwordHintText;

  const SignUpForm({
    Key? key,
    required this.nameHintText,
    required this.emailHintText,
    required this.passwordHintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextField(hintText: nameHintText),
        verticalSpaceRegular,
        AppTextField(hintText: emailHintText),
        verticalSpaceRegular,
        AppTextField(hintText: passwordHintText),
      ],
    );
  }
}
