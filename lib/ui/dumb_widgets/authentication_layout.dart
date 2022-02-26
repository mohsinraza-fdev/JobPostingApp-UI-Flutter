import 'package:assignment1/ui/shared/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'info_and_text_button.dart';
import 'main_button.dart';
import 'welcome_message.dart';

class AuthenticationLayout extends StatelessWidget {
  final String welcomeTitle;
  final String welcomeText;
  final Widget form;
  final String textButtonTitle;
  final String textButtonInfo;
  final String mainButtonTitle;
  final VoidCallback textButtonOnTapped;
  final VoidCallback mainButtonOnTapped;

  const AuthenticationLayout({
    Key? key,
    required this.welcomeTitle,
    required this.welcomeText,
    required this.form,
    required this.textButtonTitle,
    required this.textButtonInfo,
    required this.mainButtonTitle,
    required this.textButtonOnTapped,
    required this.mainButtonOnTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: appHorizontalPadding,
        width: screenWidth(context),
        height: screenHeight(context),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 110 - statusBarHeight(context)),
                child: WelcomeMessage(title: welcomeTitle, text: welcomeText),
              ),
            ),
            verticalSpaceLarge,
            form,
            const Spacer(),
            InfoAndTextButton(
                buttonTitle: textButtonTitle,
                info: textButtonInfo,
                onTap: textButtonOnTapped),
            verticalSpaceTiny,
            MainButton(title: mainButtonTitle, onTap: mainButtonOnTapped),
            verticalSpaceMedium,
          ],
        ),
      ),
    );
  }
}
