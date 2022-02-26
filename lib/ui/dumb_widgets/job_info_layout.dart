import 'package:assignment1/ui/dumb_widgets/app_text_field.dart';
import 'package:assignment1/ui/dumb_widgets/main_button.dart';
import 'package:assignment1/ui/shared/styles.dart';
import 'package:flutter/material.dart';

import '../shared/ui_helpers.dart';

class JobInfoLayout extends StatelessWidget {
  final String screenTitle;
  final VoidCallback onBackPress;
  final String positionHintText;
  final TextEditingController? positionTextController;
  final String descriptionHintText;
  final TextEditingController? descriptionTextController;
  final String mainButtonTitle;
  final VoidCallback onSubmit;

  const JobInfoLayout({
    Key? key,
    required this.screenTitle,
    required this.onBackPress,
    required this.positionHintText,
    this.positionTextController,
    required this.descriptionHintText,
    this.descriptionTextController,
    required this.mainButtonTitle,
    required this.onSubmit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: appHorizontalPadding,
        width: screenWidth(context),
        height: screenHeight(context),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BackButtonWithTitle(
                onBackPress: onBackPress, screenTitle: screenTitle),
            const SizedBox(height: 31),
            AppTextField(
                hintText: positionHintText,
                textEditingController: positionTextController),
            const SizedBox(height: 25),
            JobDescriptionContainer(
                hintText: descriptionHintText,
                textEditingController: descriptionTextController),
            const Spacer(),
            MainButton(title: mainButtonTitle, onTap: onSubmit),
            verticalSpaceMedium,
          ],
        ),
      ),
    );
  }
}

class BackButtonWithTitle extends StatelessWidget {
  final VoidCallback onBackPress;
  final String screenTitle;

  const BackButtonWithTitle({
    Key? key,
    required this.onBackPress,
    required this.screenTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.only(top: 119 - statusBarHeight(context)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: onBackPress,
              child: const Icon(
                Icons.arrow_back_ios,
                size: 25,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 22),
            Text(screenTitle, style: textHeading2),
          ],
        ),
      ),
    );
  }
}

class JobDescriptionContainer extends StatelessWidget {
  final String hintText;
  final TextEditingController? textEditingController;

  const JobDescriptionContainer(
      {Key? key, required this.hintText, this.textEditingController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: 360,
      height: 374,
      decoration: BoxDecoration(
        color: appTextFieldOverlay,
        border: Border.all(width: 1, color: appStrokeColor),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        maxLines: null,
        style: textParagraph1.merge(const TextStyle(color: Colors.white)),
        controller: textEditingController,
        decoration: InputDecoration(
            isCollapsed: true,
            border: InputBorder.none,
            hintStyle: textParagraph1,
            hintText: hintText),
      ),
    );
  }
}
