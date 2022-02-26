import 'package:assignment1/ui/dumb_widgets/app_text_field.dart';
import 'package:assignment1/ui/shared/ui_helpers.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  final String emailHintText;
  final String passwordHintText;

  const LoginForm({
    Key? key,
    required this.emailHintText,
    required this.passwordHintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextField(hintText: emailHintText),
        verticalSpaceRegular,
        AppTextField(hintText: passwordHintText),
      ],
    );
  }
}
